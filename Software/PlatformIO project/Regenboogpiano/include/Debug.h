#pragma once

#include <stdint.h>

#define DEBUG true

// Test buttons on controller board
#define PIN_TEST_BUTTON_LEFT 0
#define PIN_TEST_BUTTON_RIGHT 35

// TFT display (fixed, do not change)
#define PIN_TFT_CS         5
#define PIN_TFT_DC        16
#define PIN_TFT_BACKLIGHT  4
#define PIN_TFT_MOSI      19
#define PIN_TFT_SCLK      18

#define TFT_SCREEN_WIDTH    130
#define TFT_SCREEN_HEIGHT   240

void setup_debug();
void loop_debug();
void log_this(const char * st);
char * int64_to_char_pointer(int64_t int_in);