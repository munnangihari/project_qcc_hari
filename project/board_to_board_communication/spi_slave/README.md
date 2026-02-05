# SPI Slave Environmental Data Receiver (Monitoring Station)

## Project Overview

This project implements an **SPI slave monitoring station** using a **QCC74x series microcontroller**. The device receives real-time environmental data from an SPI master node, decodes the received packet, and displays human-readable information over **UART**.

The system acts as a **remote monitoring station**, intended to work with a sensor-node master that sends temperature, humidity, air quality, and time data.

---

## Features

* Operates as **SPI Slave (Mode 3)**
* Receives fixed-length environmental data packets
* UART-based live monitoring output
* Air quality classification based on voltage level
* Robust frame validation using start byte
* Bare-metal Embedded C implementation

---

## Hardware Components

* QCC74x Series Microcontroller
* External SPI Master Device (Sensor Node)
* USB-to-UART interface (for console output)
* Power supply (3.3V)

---

## Pin Configuration

### SPI Interface

| Signal | GPIO Pin |
| ------ | -------- |
| CS     | GPIO12   |
| SCK    | GPIO13   |
| MISO   | GPIO14   |
| MOSI   | GPIO15   |

---

## Communication Interfaces Used

* **SPI (Slave)** – Receives environmental data
* **UART** – Console output and debugging
* **GPIO** – Peripheral pin configuration

---

## Data Packet Format (SPI)

| Byte | Description             |
| ---- | ----------------------- |
| 0    | Start Frame (0xAA)      |
| 1    | Temperature (°C)        |
| 2    | Humidity (%)            |
| 3    | Hour                    |
| 4    | Minute                  |
| 5    | Second                  |
| 6    | Air Quality Voltage MSB |
| 7    | Air Quality Voltage LSB |

---

## Air Quality Classification Logic

| Voltage Range | Status      |
| ------------- | ----------- |
| ≤ 1.0 V       | CLEAN       |
| 1.0 – 2.5 V   | MODERATE    |
| > 2.5 V       | POOR (SMOG) |

---

## Runtime Behavior

1. Initialize UART for console output
2. Configure SPI peripheral in **slave mode**
3. Wait for incoming SPI data frame
4. Validate start frame byte
5. Decode temperature, humidity, time, and AQI
6. Convert AQI millivolts to volts
7. Display formatted data over UART

---

## Sample UART Output

```
CITY: HYDERABAD | 15:42:10 | T:28 C H:65 % | AQI: 1.87V [MODERATE]
```

---

## Build & Run Steps

1. Configure SPI pins and UART in board setup
2. Enable SPI slave and UART drivers in SDK
3. Build firmware using Makefile / CMake
4. Flash firmware to monitoring station board
5. Connect SPI master and observe UART output

---

## Applications

* Remote environmental monitoring stations
* Sensor data aggregation nodes
* Smart city monitoring displays
* Embedded SPI communication learning

---

## Author

**Embedded Systems Project – Fresher Level**
Bare-Metal Embedded C Implementation

---

## License

This project is intended for educational and learning purposes only.
