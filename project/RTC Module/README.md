# RTC Time & Date Display System (DS1307)

## Project Overview

This project demonstrates a **real-time clock (RTC) display system** using a **DS1307 RTC module** interfaced with a **QCC74x series microcontroller** over **I²C**. The system reads the current time and date from the RTC and displays it continuously over **UART**.

The application also includes RTC time initialization and proper **BCD-to-decimal conversion** for human-readable output.

---

## Features

* DS1307 RTC interfacing using **I²C**
* Time and date configuration on startup
* Continuous time/date reading
* UART-based formatted display
* BCD ↔ Decimal conversion handling
* Bare-metal Embedded C implementation

---

## Hardware Components

* QCC74x Series Microcontroller
* DS1307 RTC Module
* I²C pull-up resistors
* USB-to-UART interface
* Power supply (3.3V)

---

## Pin Configuration

### I²C (RTC)

| Signal | GPIO Pin |
| ------ | -------- |
| SCL    | GPIO10   |
| SDA    | GPIO11   |

---

## Communication Interfaces Used

* **I²C** – RTC communication (DS1307)
* **UART** – Time and date display
* **GPIO** – Peripheral pin configuration

---

## RTC Data Handling

* DS1307 stores time in **BCD format**
* MCU converts BCD values to decimal before printing
* Clock halt (CH) bit is handled automatically during time setup

---

## Runtime Behavior

1. Initialize UART for console output
2. Initialize I²C and connect to DS1307 RTC
3. Set initial time and date
4. Read RTC registers every second
5. Convert BCD data to readable format
6. Display time and date over UART

---

## Sample UART Output

```
CITY : HYDERABAD
TIME : 10:45:30
DATE : 03/02/2026
-----------------------------
```

---

## Build & Run Steps

1. Configure UART and I²C pins
2. Enable UART and I²C drivers in SDK
3. Build firmware using Makefile / CMake
4. Flash to QCC74x board
5. Open serial terminal at 115200 baud

---

## Applications

* Digital clock systems
* Embedded RTC learning projects
* Data logging timestamp source
* IoT devices requiring timekeeping

---

## Author

**Embedded Systems Project – Fresher Level**
Bare-Metal Embedded C Implementation

---

## License

This project is intended for educational and learning purposes only.
