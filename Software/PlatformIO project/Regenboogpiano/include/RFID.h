#pragma once

// RFID reader
#define PIN_RFID_RESET  UINT8_MAX // not connected
#define PIN_RFID_CS     15
#define PIN_RFID_SCK    12
#define PIN_RFID_MISO   38
#define PIN_RFID_MOSI   13

void setup_RFID();
bool check_for_RFID();
