#pragma once

#include <Adafruit_GFX.h>
#include <Adafruit_NeoMatrix.h>
#include <Adafruit_NeoPixel.h>

extern Adafruit_NeoMatrix LED_display;
extern Adafruit_NeoPixel LED_rings;

void setup_LEDs();
void loop_LEDs();
