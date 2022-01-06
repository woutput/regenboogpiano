#include <defines.h>
#include <LEDs.h>

Adafruit_NeoMatrix LED_display = Adafruit_NeoMatrix(32 * 6, 8, PIN_LED_DISPLAY,
  NEO_MATRIX_TOP     + NEO_MATRIX_LEFT +
  NEO_MATRIX_COLUMNS + NEO_MATRIX_ZIGZAG,
  NEO_GRB            + NEO_KHZ800);

Adafruit_NeoPixel LED_rings = Adafruit_NeoPixel(NUMBER_OF_LEDS_PER_LED_RING * NUMBER_OF_LED_RINGS, PIN_LED_RINGS, NEO_GRB + NEO_KHZ800);

void setup_LEDs()
{
    LED_display.begin();
    LED_display.setBrightness(LED_DISPLAY_BRIGHTNESS);
    LED_display.clear();
    LED_display.show(); // Initialize all LEDs to 'off'

    LED_rings.begin();
    LED_rings.setBrightness(LED_RINGS_BRIGHTNESS);
    LED_rings.clear();
    LED_rings.show(); // Initialize all LEDs to 'off'
}

void loop_LEDs()
{
}
