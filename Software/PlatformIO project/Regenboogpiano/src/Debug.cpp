#include <defines.h>
#include <Debug.h>
#include <Adafruit_ST7789.h> // Hardware-specific library for ST7789

// TFT display
#if (DEBUG == true)
    SPIClass* spi = &SPI;
    Adafruit_ST7789 tft = Adafruit_ST7789(PIN_TFT_CS, PIN_TFT_DC, PIN_TFT_MOSI, PIN_TFT_SCLK);
#endif

void setup_debug()
{
    pinMode(PIN_TFT_BACKLIGHT, OUTPUT);
    #if (DEBUG == true)
        // Debug to serial
        Serial.begin(115200);
        while (!Serial); // wait for serial port to connect. Needed for native USB port only

        // Test buttons
        pinMode(PIN_TEST_BUTTON_LEFT, INPUT_PULLUP);
        pinMode(PIN_TEST_BUTTON_RIGHT, INPUT_PULLUP);

        // TFT display
        tft.init(TFT_SCREEN_WIDTH, TFT_SCREEN_HEIGHT);
        tft.setRotation(0);
        tft.setCursor(0, 0);
        tft.fillScreen(ST77XX_BLACK);
        digitalWrite(PIN_TFT_BACKLIGHT, HIGH); // Backlight on
    #else
        digitalWrite(PIN_TFT_BACKLIGHT, LOW); // Backlight off
    #endif
}

void loop_debug()
{
}

void log_this(const char * st)
{
    #if (DEBUG == true)
        int16_t gety;
        gety = tft.getCursorY();
        Serial.println(st);
        if (gety > (TFT_SCREEN_HEIGHT - 8))
        {
            tft.setCursor(0, 0);
            tft.startWrite();
            tft.writeFillRectPreclipped(0, 0, TFT_SCREEN_WIDTH, 8, ST77XX_BLACK);
            tft.endWrite();
        }
        else
        {
            tft.startWrite();
            tft.writeFillRectPreclipped(0, gety, TFT_SCREEN_WIDTH, 8, ST77XX_BLACK);
            tft.endWrite();
        }
        tft.println(st);
        // TODO log to file (on SPIFFS?) ? And host via WiFi?
        // TODO push to webserver ouderraadgroteheide.be ?
    #endif
}
