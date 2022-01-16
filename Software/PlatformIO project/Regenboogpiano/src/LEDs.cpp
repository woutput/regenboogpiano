#include <defines.h>
#include <LEDs.h>
#include <Debug.h>

Adafruit_NeoMatrix LED_display = Adafruit_NeoMatrix(LED_DISPLAY_WIDTH__PIX * NUMBER_OF_LED_DISPLAYS, LED_DISPLAY_HEIGHT__PIX, PIN_LED_DISPLAY,
    NEO_MATRIX_TOP     + NEO_MATRIX_LEFT +
    NEO_MATRIX_COLUMNS + NEO_MATRIX_ZIGZAG,
    NEO_GRB            + NEO_KHZ800);

Adafruit_NeoPixel LED_rings = Adafruit_NeoPixel(NUMBER_OF_LEDS_PER_LED_RING * NUMBER_OF_LED_RINGS, PIN_LED_RINGS, NEO_GRB + NEO_KHZ800);

bool busy_scrolling_text = false;

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
    if (busy_scrolling_text == true)
    {
        // TODO implement scrolling each #defined timeout scroll step
        busy_scrolling_text = false;
    }
}

void start_LED_display_scroll(const char * text_to_scroll)
{
    busy_scrolling_text = true;
    log_this("Started scrolling text:");
    log_this(text_to_scroll);
}

void LED_display_center(const char * text_to_display)
{
    // TODO implement
    log_this("Added centered text on LED display:");
    log_this(text_to_display);
}

void clear_LED_display()
{
    // TODO implement
}

void clear_LED_rings()
{
    // TODO implement
}

void show_correct_key_using_LED_ring(uint8_t key_number)
{
    // TODO implement
}

void turn_on_LED_ring_in_own_color(uint8_t key_number)
{
    // TODO implement
}
