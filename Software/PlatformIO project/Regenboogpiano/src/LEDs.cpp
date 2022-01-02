#include <defines.h>
#include <LEDs.h>
#include <Adafruit_GFX.h>    // Core graphics library
#include <Adafruit_NeoMatrix.h>
#include <Adafruit_NeoPixel.h>

// LED display
// Adafruit_NeoMatrix LED_display = Adafruit_NeoMatrix(32 * 6, 8, PIN_LED_DISPLAY,
//   NEO_MATRIX_TOP     + NEO_MATRIX_LEFT +
//   NEO_MATRIX_COLUMNS + NEO_MATRIX_ZIGZAG,
//   NEO_GRB            + NEO_KHZ800);
Adafruit_NeoPixel LED_display = Adafruit_NeoPixel(32*6*8, PIN_LED_DISPLAY, NEO_GRB + NEO_KHZ800); // TODO: remove this, test only

// // LED rings
// Adafruit_NeoPixel LED_rings = Adafruit_NeoPixel(NUMBER_OF_LEDS_PER_LED_RING * NUMBER_OF_LED_RINGS, PIN_LED_RINGS, NEO_GRB + NEO_KHZ800);

void setup_LEDs()
{
    LED_display.begin();
    LED_display.setBrightness(LED_DISPLAY_BRIGHTNESS);
    LED_display.show(); // Initialize all pixels to 'off'
}