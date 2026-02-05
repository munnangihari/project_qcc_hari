# DHT11 Temperature & Humidity Monitoring System

## Project Overview

This project demonstrates a **simple temperature and humidity monitoring system** using a **DHT11 sensor** interfaced with a **QCC74x series microcontroller**. The sensor is read using precise GPIO timing, and the measured values are printed over **UART**.

---

## Features

* DHT11 temperature & humidity sensor interfacing
* GPIO-based single-wire protocol
* Microsecond-level timing using mtimer
* UART output for monitoring
* Bare-metal Embedded C implementation

---

## Hardware Components

* QCC74x Series Microcontroller
* DHT11 Temperature & Humidity Sensor
* Pull-up resistor (usually on DHT11 module)
* Power supply (3.3V)

---

## Pin Configuration

### Sensors

| Sensor     | GPIO  |
| ---------- | ----- |
| DHT11 Data | GPIO3 |

---

## Communication / Interfaces Used

* **GPIO** – DHT11 single-wire protocol
* **UART** – Debug and data output
* **MTIMER** – Microsecond delays

---

## How It Works

1. MCU sends start signal to DHT11 (low for 20 ms)
2. DHT11 responds with presence pulse
3. Sensor sends 40-bit data stream
4. MCU measures pulse widths to decode bits
5. Temperature and humidity values are extracted
6. Data is printed over UART every 3 seconds

---

## Sample UART Output

```
TEMP=28 C  HUM=65 %
TEMP=29 C  HUM=64 %
```

---

---

## Build & Run Steps

1. Add `main.c` to your QCC74x SDK project
2. Enable GPIO and UART
3. Build and flash firmware
4. Open serial terminal

---

## Notes

* DHT11 sampling rate: **1 reading per second max**
* Timing accuracy is critical for reliable data
* Use short wires for stable communication

---

## Applications

* Weather monitoring
* Home automation
* Embedded GPIO timing practice
* Sensor interfacing projects

---

## Author

**Embedded Systems Project – Fresher Level**
Bare-Metal Embedded C

---

## License

Educational use only.
