#include "board.h"
#include "qcc74x_mtimer.h"
#include "qcc74x_i2c.h"
#include "qcc74x_gpio.h"
#include "qcc74x_spi.h"
#include <stdio.h>

// ================= PINS =================
#define SPI_CS_PIN      GPIO_PIN_12
#define SPI_SCK_PIN     GPIO_PIN_13
#define SPI_MISO_PIN    GPIO_PIN_14
#define SPI_MOSI_PIN    GPIO_PIN_15

// RTC (I2C)
#define RTC_SCL_PIN     GPIO_PIN_10
#define RTC_SDA_PIN     GPIO_PIN_11
#define DS1307_ADDR     0x68

// DHT11
#define DHT11_PIN       GPIO_PIN_3

static struct qcc74x_device_s *spi0;
static struct qcc74x_device_s *gpio;
static struct qcc74x_device_s *i2c0;

// ================= HELPER FUNCTIONS =================
static uint8_t bcd_to_dec(uint8_t v) { return ((v >> 4) * 10) + (v & 0x0F); }
static void delay_us(uint32_t us) { qcc74x_mtimer_delay_us(us); }

// ================= INIT =================
void system_init(void) {
    gpio = qcc74x_device_get_by_name("gpio");
    
    // SPI Pins
    qcc74x_gpio_init(gpio, SPI_SCK_PIN,  GPIO_FUNC_SPI0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, SPI_MISO_PIN, GPIO_FUNC_SPI0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, SPI_MOSI_PIN, GPIO_FUNC_SPI0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, SPI_CS_PIN,   GPIO_OUTPUT | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_set(gpio, SPI_CS_PIN);

    // RTC Pins
    qcc74x_gpio_init(gpio, RTC_SCL_PIN, GPIO_FUNC_I2C0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_init(gpio, RTC_SDA_PIN, GPIO_FUNC_I2C0 | GPIO_ALTERNATE | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);

    // DHT11 Pin (Idle High)
    qcc74x_gpio_init(gpio, DHT11_PIN, GPIO_OUTPUT | GPIO_PULLUP | GPIO_SMT_EN | GPIO_DRV_1);
    qcc74x_gpio_set(gpio, DHT11_PIN);
}

void spi_init(void) {
    struct qcc74x_spi_config_s spi_cfg = {
        .freq = 500000, .role = SPI_ROLE_MASTER, .mode = SPI_MODE3,
        .data_width = SPI_DATA_WIDTH_8BIT, .bit_order = SPI_BIT_MSB, .byte_order = SPI_BYTE_LSB,
        .tx_fifo_threshold = 0, .rx_fifo_threshold = 0,
    };
    spi0 = qcc74x_device_get_by_name("spi0");
    qcc74x_spi_init(spi0, &spi_cfg);
}

// ================= DHT11 READ =================
int dht11_read(uint8_t *temp, uint8_t *hum) {
    uint8_t data[5] = {0};
    uint32_t timeout;

    // 1. Start Signal
    qcc74x_gpio_init(gpio, DHT11_PIN, GPIO_OUTPUT);
    qcc74x_gpio_reset(gpio, DHT11_PIN);
    qcc74x_mtimer_delay_ms(20);
    qcc74x_gpio_set(gpio, DHT11_PIN);
    delay_us(40);
    qcc74x_gpio_init(gpio, DHT11_PIN, GPIO_INPUT);

    // 2. Wait for Response
    timeout = 500; while (qcc74x_gpio_read(gpio, DHT11_PIN) && timeout--) delay_us(1);
    if (!timeout) return -1;
    timeout = 500; while (!qcc74x_gpio_read(gpio, DHT11_PIN) && timeout--) delay_us(1);
    if (!timeout) return -1;
    timeout = 500; while (qcc74x_gpio_read(gpio, DHT11_PIN) && timeout--) delay_us(1);
    if (!timeout) return -1;

    // 3. Read 40 Bits
    for (int i = 0; i < 40; i++) {
        timeout = 500; while (!qcc74x_gpio_read(gpio, DHT11_PIN) && timeout--) delay_us(1);
        delay_us(50); // Measure pulse width
        if (qcc74x_gpio_read(gpio, DHT11_PIN))
            data[i / 8] |= (1 << (7 - (i % 8)));
        timeout = 500; while (qcc74x_gpio_read(gpio, DHT11_PIN) && timeout--) delay_us(1);
    }

    // 4. Checksum
    if ((data[0] + data[1] + data[2] + data[3]) != data[4]) return -2; // Checksum error

    *hum = data[0];
    *temp = data[2];
    return 0;
}

// ================= MAIN =================
int main(void) {
    board_init();
    system_init();
    
    i2c0 = qcc74x_device_get_by_name("i2c0");
    qcc74x_i2c_init(i2c0, 100000);
    spi_init();

    uint8_t h, m, s, t = 0, hum = 0;
    uint8_t tx_buf[6]; // Increased to 6 bytes
    uint8_t rx_dummy[6];
    
    struct qcc74x_i2c_msg_s msg[2];
    uint8_t reg = 0x00;
    uint8_t i2c_buf[3];

    printf("MASTER: DHT11 on Pin 3 | RTC on 10/11 | SPI on 12-15\r\n");

    while (1) {
        // --- 1. READ RTC ---
        msg[0].addr = DS1307_ADDR; msg[0].flags = I2C_M_NOSTOP; msg[0].buffer = &reg; msg[0].length = 1;
        msg[1].addr = DS1307_ADDR; msg[1].flags = I2C_M_READ;   msg[1].buffer = i2c_buf; msg[1].length = 3;

        if (qcc74x_i2c_transfer(i2c0, msg, 2) == 0) {
            s = bcd_to_dec(i2c_buf[0] & 0x7F);
            m = bcd_to_dec(i2c_buf[1]);
            h = bcd_to_dec(i2c_buf[2] & 0x3F);
        } else {
            h=99; m=99; s=99; // RTC Error flag
        }

        // --- 2. READ DHT11 ---
        // If read fails, we keep previous values or set to 0
        if(dht11_read(&t, &hum) != 0) {
            // Optional: Set to 0 if error, or keep last known value
            // t = 0; hum = 0; 
            printf("DHT Read Failed\r\n");
        }

        // --- 3. SEND SPI ---
        tx_buf[0] = 0xAA; // Header
        tx_buf[1] = t;    // Temp
        tx_buf[2] = hum;  // Humidity
        tx_buf[3] = h;    // Hour
        tx_buf[4] = m;    // Min
        tx_buf[5] = s;    // Sec

        qcc74x_gpio_reset(gpio, SPI_CS_PIN);
        qcc74x_spi_poll_exchange(spi0, tx_buf, rx_dummy, 6);
        qcc74x_gpio_set(gpio, SPI_CS_PIN);

        printf("Sent: T:%d H:%d @ %02d:%02d:%02d\r\n", t, hum, h, m, s);
        
        qcc74x_mtimer_delay_ms(1000);
    }
}
