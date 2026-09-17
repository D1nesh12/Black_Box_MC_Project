# System Architecture

## High-Level Architecture
The system is built on an event-driven, interrupt-based architecture to guarantee real-time responsiveness.

### Subsystems
1. **Data Acquisition (ADC):** Continuously polls sensor inputs (e.g., speed, throttle position).
2. **Timekeeping (I2C/DS1307):** Maintains an accurate timestamp for event logging.
3. **Storage (I2C/EEPROM):** Handles the page-write and read operations for the non-volatile memory.
4. **Human Machine Interface (CLCD & Keypad):** Manages the dashboard display and menu state machine.
5. **Diagnostics (UART):** Transmits formatted log data to external diagnostic tools.
