#pragma once

#include <Defines.h>
#include <Adafruit_GFX.h>
#include <Adafruit_NeoMatrix.h>
#include <Adafruit_NeoPixel.h>

//                                      WARNING DO NOT ENTER 128 OR HIGHER, ELECTRONICS WILL BE OVERLOADED, FUSE(S) MAY BLOW OR PARTS WILL OVERHEAT AND BREAK
#define LED_BRIGHTNESS 100 // 0...255    WARNING DO NOT ENTER 128 OR HIGHER, ELECTRONICS WILL BE OVERLOADED, FUSE(S) MAY BLOW OR PARTS WILL OVERHEAT AND BREAK
//                                      WARNING DO NOT ENTER 128 OR HIGHER, ELECTRONICS WILL BE OVERLOADED, FUSE(S) MAY BLOW OR PARTS WILL OVERHEAT AND BREAK
#define LED_DISPLAY_BRIGHTNESS LED_BRIGHTNESS // 0...255
#define LED_RINGS_BRIGHTNESS LED_BRIGHTNESS // 0...255

// LEDs
#define PIN_LED_RINGS   26
#define PIN_LED_DISPLAY 27

#define NUMBER_OF_LED_DISPLAYS   4
#define LED_DISPLAY_WIDTH__PIX  (32 * NUMBER_OF_LED_DISPLAYS)
#define LED_DISPLAY_HEIGHT__PIX  8
#define LED_DISPLAY_CHARACTER_WIDTH 6
#define LED_DISPLAY_CHARACTER_HEIGHT 6
#define LED_DISPLAY_WIDTH__CHAR (LED_DISPLAY_WIDTH__PIX / LED_DISPLAY_CHARACTER_WIDTH)

#define NUMBER_OF_LED_RINGS 26
#define NUMBER_OF_LEDS_PER_LED_RING 12

extern Adafruit_NeoMatrix LED_display;
extern Adafruit_NeoPixel LED_rings;
extern bool busy_scrolling_text;
extern bool LED_rings_show_win;
extern bool LED_rings_show_lose;
extern const char* const color_name[NUMBER_OF_NOTES];

void setup_LEDs();
void loop_LEDs();
void start_LED_display_scroll(const char * text_to_scroll);
void LED_display_center(const char * text_to_display);
void clear_LED_display();
void clear_LED_rings();
void show_correct_key_using_LED_ring(uint8_t key_number);
void turn_on_LED_ring_in_own_color(uint8_t key_number);
void show_startup_on_LED_rings();
