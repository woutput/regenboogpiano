//// Important constants
#define LED_BRIGHTNESS 12 // 0...255
#define LED_DISPLAY_BRIGHTNESS LED_BRIGHTNESS // 0...255
#define LED_RINGS_BRIGHTNESS LED_BRIGHTNESS // 0...255

//// Pins
// DAC
#define PIN_DAC_DATA     32
#define PIN_DAC_BCLK     33
#define PIN_DAC_LRCLK    25

// TFT display (fixed, do not change)
#define PIN_TFT_CS         5
#define PIN_TFT_RST       -1 // not connected
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

// Test buttons on controller board
#define PIN_TEST_BUTTON_LEFT 0
#define PIN_TEST_BUTTON_RIGHT 35

//// Less important constants
// TODO: change from 1 (test) to 3 (real)
#define NUMBER_OF_SHIFT_REGISTERS 1
#define NUMBER_OF_SHIFTS (NUMBER_OF_SHIFT_REGISTERS * 8)

// TODO: change from 1 (test) to 25 (real)
#define NUMBER_OF_LED_RINGS 1
#define NUMBER_OF_LEDS_PER_LED_RING 12
