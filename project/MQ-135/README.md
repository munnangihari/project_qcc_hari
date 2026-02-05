# MQ135 Air Quality Monitoring System (ADC Based)

## Project Overview

This project implements a **simple air quality monitoring system** using a **QCC74x series microcontroller**. The system reads analog data from an **MQ135 gas sensor** using the on-chip **ADC**, converts it to voltage, and classifies air quality levels in real time.

The measured air quality data is displayed over **UART** every second.

---

## Features

* MQ135 gas sensor interfacing using **ADC**
* 16-bit ADC resolution
* Voltage-based air quality classification
* Periodic sampling (1 second)
* UART output for monitoring
* Bare‑metal Embedded C implementation

---

## Hardware Components

* QCC74x Series Microcontroller
* MQ135 Gas Sensor Module
* Jumper wires
* Power supply (3.3V)

---

## Pin Configuration

### Sensors

| Sensor     | GPIO                  |
| ---------- | --------------------- |
| MQ135 (AO) | GPIO2 (ADC Channel 2) |

---

## Communication / Interfaces Used

* **ADC** – MQ135 analog gas sensor
* **UART** – Debug and data output
* **GPIO** – Sensor interface

---

## Air Quality Logic

| Voltage Range | Air Quality |
| ------------- | ----------- |
| < 1.0 V       | CLEAN       |
| 1.0 – 2.0 V   | MODERATE    |
| 2.0 – 2.8 V   | POOR        |
| > 2.8 V       | VERY POOR   |

---

## How It Works

1. Initialize board and ADC peripheral
2. Configure ADC channel connected to MQ135
3. Wait 10 seconds for MQ135 warm-up
4. Start ADC conversion
5. Read raw ADC value
6. Convert ADC value to voltage
7. Classify air quality
8. Print result over UART every second

---

## Sample UART Output

```
=== MQ135 Air Quality Monitor ===
ADC initialized
Warming up MQ135 (10 seconds)...
Voltage: 0.92 V  | Air Quality: CLEAN
Voltage: 1.67 V  | Air Quality: MODERATE
Voltage: 2.45 V  | Air Quality: POOR
```

---

## Build & Run Steps

1. Add `main.c` to your QCC74x SDK project
2. Enable ADC and UART in board configuration
3. Build using Makefile / CMake
4. Flash firmware to the board
5. Open serial terminal

---

## Notes

* MQ135 requires **24–48 hours burn‑in** for stable readings
* Voltage thresholds are approximate
* Proper calibration is needed for accurate gas concentration (PPM)

---

## Applications

* Air quality monitoring
* Indoor pollution detection
* Embedded ADC learning projects
* IoT sensor nodes

---

## Author

**Embedded Systems Project – Fresher Level**
Implemented using Bare‑Metal Embedded C

---

## License

This project is for educational and learning purposes only.
