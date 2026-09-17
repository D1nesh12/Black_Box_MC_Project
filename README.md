# Automotive Black Box (Event Data Recorder)

## Description
This project implements a microcontroller-based "Black Box" or Event Data Recorder for vehicles. Built in C using the MPLAB X environment, the system continuously monitors, logs, and displays critical vehicle parameters in real-time. It utilizes a variety of hardware peripherals to record timestamps, sensor states, and user interactions to non-volatile memory, allowing for post-event retrieval and analysis via serial communication.

## Features
*   **Real-Time Data Logging:** Timestamped event recording using the DS1307 Real-Time Clock (RTC) via I2C.
*   **Non-Volatile Storage:** Reliable data persistence using an external EEPROM module via I2C.
*   **Sensor Monitoring:** Analog-to-Digital Conversion (ADC) for reading dynamic parameters (e.g., speed, acceleration).
*   **Interactive UI:** Character LCD (CLCD) integration for real-time monitoring, combined with a Matrix Keypad for menu navigation and log viewing.
*   **PC Communication:** UART protocol implementation for downloading recorded logs directly to a terminal.
*   **Event-Driven Architecture:** Utilizes Hardware Timers and Interrupt Service Routines (ISRs) for precise, non-blocking execution.

## Installation
1. Clone this repository to your local machine.
2. Install **MPLAB X IDE** and the **XC8 Compiler**.
3. Open MPLAB X IDE and navigate to `File > Open Project`.
4. Select the `3_Implementation/Black_Box_MC_Project.X` directory.
5. Ensure your compiler toolchain is correctly linked in the project properties.
6. Click the **Build** (hammer) icon to compile the project.

## Usage
1. Connect your target microcontroller to your programmer/debugger (e.g., PICkit).
2. Wire the corresponding hardware modules (CLCD, Matrix Keypad, DS1307 RTC, EEPROM) to the microcontroller pins as defined in the header files.
3. Flash the compiled `.hex` file located in the `6_Output` directory to the microcontroller.
4. On startup, the CLCD will display the default dashboard. Use the Matrix Keypad to navigate through the menu to view logs, clear memory, or download data.
5. To view downloaded logs on a PC, connect a USB-to-TTL serial adapter to the UART pins and open a serial terminal (e.g., PuTTY, TeraTerm) configured to the project's baud rate.

## Output
The primary software outputs are generated in the `6_Output/` directory:
*   **`.hex` file**: The production-ready binary to be flashed onto the MCU.
*   **UART Data Stream**: Real-time or archived text logs outputted via the serial port when requested by the user.
*   **CLCD Interface**: Dynamic, real-time visual output on the connected character display.

## Contributing
Contributions are welcome. If you find a bug or have a feature request, please open an issue. For direct code contributions, please fork the repository and submit a pull request with clear documentation of your changes and related test cases in the `4_Test_Planned` folder.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
