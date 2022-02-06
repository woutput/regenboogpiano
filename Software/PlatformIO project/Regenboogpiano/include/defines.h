#pragma once

//// Important constants
#define DEBUG true
#define LED_BRIGHTNESS 12 // 0...255
#define LED_DISPLAY_BRIGHTNESS LED_BRIGHTNESS // 0...255
#define LED_RINGS_BRIGHTNESS LED_BRIGHTNESS // 0...255
#define MAXIMUM_NUMBER_OF_SONGS 255 // data types (may) need to change if this value changes
#define MAXIMUM_NUMBER_OF_NOTES_PER_SONG 255 // data types (may) need to change if this value changes

//// Pins
// DAC
#define PIN_DAC_DATA     32
#define PIN_DAC_BCLK     33
#define PIN_DAC_LRCLK    25

// TFT display (fixed, do not change)
#define PIN_TFT_CS         5
#define PIN_TFT_DC        16
#define PIN_TFT_BACKLIGHT  4
#define PIN_TFT_MOSI      19
#define PIN_TFT_SCLK      18

// LEDs
#define PIN_LED_RINGS   26
#define PIN_LED_DISPLAY 27

// RFID reader
#define PIN_RFID_RESET  UINT8_MAX // not connected
#define PIN_RFID_CS     15
#define PIN_RFID_SCK    12
#define PIN_RFID_MISO   38
#define PIN_RFID_MOSI   13

// Shift registers
#define PIN_SHIFT_CLK   21
#define PIN_SHIFT_SHLD  22
#define PIN_SHIFT_DATA  36

#define TIMEOUT_SHIFT_REGISTERS__MS 50

// Remaining touch buttons
#define PIN_TOUCH_MENU  37
#define PIN_TOUCH_25    17

// Test buttons on controller board
#define PIN_TEST_BUTTON_LEFT 0
#define PIN_TEST_BUTTON_RIGHT 35

#define NUMBER_OF_SHIFT_REGISTERS 3
#define NUMBER_OF_SHIFTS (NUMBER_OF_SHIFT_REGISTERS * 8)
#define NUMBER_OF_TOUCH_SENSORS (NUMBER_OF_SHIFTS + 1 + 1) // T1...T24 + T25 + Tmenu
#define NUMBER_OF_NOTES 25

#define NUMBER_OF_LED_RINGS 26
#define NUMBER_OF_LEDS_PER_LED_RING 12

#define NUMBER_OF_LED_DISPLAYS   4
#define LED_DISPLAY_WIDTH__PIX  (32 * NUMBER_OF_LED_DISPLAYS)
#define LED_DISPLAY_HEIGHT__PIX  8
#define LED_DISPLAY_CHARACTER_WIDTH 6
#define LED_DISPLAY_CHARACTER_HEIGHT 6
#define LED_DISPLAY_WIDTH__CHAR (LED_DISPLAY_WIDTH__PIX / LED_DISPLAY_CHARACTER_WIDTH)

#define TFT_SCREEN_WIDTH    130
#define TFT_SCREEN_HEIGHT   240

#define TIMEOUT_NO_INTERACTION__MS (15 * 60 * 1000)
#define TIMEOUT_WELKOM__MS     1000
#define TIMEOUT_GAME_START__MS 2000
#define TIMEOUT_COUNT_DOWN__MS 1000
#define TIMEOUT_WIN_LOSE__MS   5000
