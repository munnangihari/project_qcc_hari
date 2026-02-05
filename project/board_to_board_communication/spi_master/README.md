# Real-Time Environmental Monitoring System

## Project Overview

This project implements a **real-time environmental monitoring system** using a **QCC74x series microcontroller**. The system continuously collects environmental data from multiple sensors, maintains accurate time using an RTC, and transmits the collected data to an external device via SPI.

The system monitors:

* **Temperature & Humidity** using a DHT11 sensor
* **Air Quality** using an MQ135 gas sensor (ADC based)
* **Time & Date** using a DS1307 RTC over I²C

All data is formatted into a fixed SPI packet and sent once every second. The system also includes a **self-recovery watchdog mechanism** for the RTC.

---

## Features

* Real-time clock management using **DS1307 (I²C)**
* Automatic RTC oscillator force-start on boot
* RTC watchdog to recover from stuck clock conditions
* Temperature & humidity monitoring using **DHT11**
* Air quality measurement using **MQ135 (ADC)**
* SPI master communication for external data transfer
* UART status output for debugging
* Bare-metal Embedded C implementation

---

## Hardware Components

* QCC74x Series Microcontroller
* DS1307 RTC Module
* DHT11 Temperature & Humidity Sensor
* MQ135 Gas Sensor
* External SPI Slave Device
* Pull-up resistors for I²C
* Power supply (3.3V)

---

## Pin Configuration

### SPI

| Signal | GPIO Pin |
| ------ | -------- |
| CS     | GPIO12   |
| SCK    | GPIO13   |
| MISO   | GPIO14   |
| MOSI   | GPIO15   |

### I²C (RTC)

| Signal | GPIO Pin |
| ------ | -------- |
| SCL    | GPIO10   |
| SDA    | GPIO11   |

### Sensors

| Sensor     | GPIO                  |
| ---------- | --------------------- |
| DHT11      | GPIO3                 |
| MQ135 (AO) | GPIO2 (ADC Channel 2) |

---

## Communication Interfaces Used

* **SPI** – Data transmission to external controller
* **I²C** – RTC communication (DS1307)
* **ADC** – MQ135 analog gas sensor
* **GPIO** – DHT11 single-wire protocol
* **UART** – Debug and status output

---

## Data Packet Format (SPI)

| Byte | Description             |
| ---- | ----------------------- |
| 0    | Start Frame (0xAA)      |
| 1    | Temperature             |
| 2    | Humidity                |
| 3    | Hour                    |
| 4    | Minute                  |
| 5    | Second                  |
| 6    | Air Quality Voltage MSB |
| 7    | Air Quality Voltage LSB |

---

## RTC Watchdog Mechanism

* System continuously monitors RTC time values
* If RTC time remains **00:00:00 for more than 5 seconds**:

  * RTC oscillator is automatically force-restarted
  * Prevents system lock due to RTC failure

---

## Runtime Behavior

1. System initializes GPIO, SPI, I²C, ADC
2. RTC oscillator is force-started on boot
3. RTC time is read every second
4. DHT11 and MQ135 sensor values are acquired
5. Sensor data and time are packed into SPI frame
6. Data is transmitted via SPI
7. System status is printed over UART

---

## Sample UART Output

```
HYDERABAD MONITOR | Time: 15:30:10 | T:28 H:65 AQI:1234
```

---

## Build & Run Steps

1. Configure board and peripheral pins
2. Enable SPI, I²C, ADC, GPIO, UART in SDK
3. Build firmware using Makefile / CMake
4. Flash to QCC74x board
5. Open serial terminal for monitoring

---

## Applications

* Environmental monitoring systems
* Smart city air quality monitoring
* Industrial safety systems
* IoT edge devices
* Embedded systems learning projects

---

## Author

**Embedded Systems Project – Fresher Level**
Designed and implemented using Bare-Metal Embedded C

---

## License

This project is intended for educational and learning purposes.
