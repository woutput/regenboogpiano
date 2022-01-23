#pragma once

#include <Defines.h>
#include <Adafruit_GFX.h>
#include <Adafruit_NeoMatrix.h>
#include <Adafruit_NeoPixel.h>

extern Adafruit_NeoMatrix LED_display;
extern Adafruit_NeoPixel LED_rings;
extern bool busy_scrolling_text;
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
