#include <defines.h>
#include <Debug.h>
#include <Adafruit_ST7789.h> // Hardware-specific library for ST7789
#include <SPI.h>

// TFT display
SPIClass* spi = &SPI;
Adafruit_ST7789 tft = Adafruit_ST7789(PIN_TFT_CS, PIN_TFT_DC, PIN_TFT_MOSI, PIN_TFT_SCLK, PIN_TFT_RST); // TODO: remove last argument, because default is already -1

void setup_debug()
{
    pinMode(PIN_TFT_BACKLIGHT, OUTPUT);
    #ifdef DEBUG
        // Debug to serial
        Serial.begin(115200);
        while (!Serial); // wait for serial port to connect. Needed for native USB port only

        // Test buttons
        pinMode(PIN_TEST_BUTTON_LEFT, INPUT_PULLUP);
        pinMode(PIN_TEST_BUTTON_RIGHT, INPUT_PULLUP);

        // TFT display
        tft.init(135, 240);
        tft.setRotation(1);
        digitalWrite(PIN_TFT_BACKLIGHT, HIGH); // Backlight on
    #else
        digitalWrite(PIN_TFT_BACKLIGHT, LOW); // Backlight on
    #endif
}