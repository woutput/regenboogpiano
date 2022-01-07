#pragma once

#include <Adafruit_GFX.h>
#include <Adafruit_NeoMatrix.h>
#include <Adafruit_NeoPixel.h>

extern Adafruit_NeoMatrix LED_display;
extern Adafruit_NeoPixel LED_rings;
extern bool busy_scrolling_text;

void setup_LEDs();
void loop_LEDs();
void start_LED_display_scroll(const char * text_to_scroll);
void LED_display_center(const char * text_to_display);
void clear_LED_display();
void clear_LED_rings();
