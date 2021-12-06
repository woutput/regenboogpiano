// I2S DAC
#define PIN_I2SDAC_BCLK     15
#define PIN_I2SDAC_LRCLK    12
#define PIN_I2SDAC_DATA      2

// TFT display
#define PIN_TFT_CS        5
#define PIN_TFT_RST       -1 // Or set to -1 and connect to Arduino RESET pin
#define PIN_TFT_DC        16
#define PIN_TFT_BACKLIGHT 4 // Display backlight pin
#define PIN_TFT_MOSI      19  // Data out
#define PIN_TFT_SCLK      18  // Clock out

// Test buttons on controller board
#define PIN_TEST_BUTTON_LEFT 0
#define PIN_TEST_BUTTON_RIGHT 35

#include <Arduino.h>
#include <WiFi.h>
#include "AudioFileSourcePROGMEM.h"
#include "AudioGeneratorMP3.h"
#include "AudioOutputI2S.h"
#include <Adafruit_GFX.h>    // Core graphics library
#include <Adafruit_ST7789.h> // Hardware-specific library for ST7789
#include <SPI.h>

#include "left.h"
#include "right.h"

// Audio
AudioGeneratorMP3 *mp3;
AudioFileSourcePROGMEM *file;
AudioOutputI2S *out;

// Display
SPIClass* spi = &SPI;
Adafruit_ST7789 tft = Adafruit_ST7789(PIN_TFT_CS, PIN_TFT_DC, PIN_TFT_MOSI, PIN_TFT_SCLK, PIN_TFT_RST);

void setup()
{
  WiFi.mode(WIFI_OFF); // TODO turn on later for firmware updates
  Serial.begin(115200);
  delay(1000);
  Serial.printf("Sample MP3 playback begins...\n");

// Pins
  pinMode(PIN_TEST_BUTTON_LEFT, INPUT_PULLUP);
  pinMode(PIN_TEST_BUTTON_RIGHT, INPUT_PULLUP);

// Audio
  audioLogger = &Serial;
  file = new AudioFileSourcePROGMEM(left_h, sizeof(left_h));
  out = new AudioOutputI2S();
  out->SetPinout(PIN_I2SDAC_BCLK, PIN_I2SDAC_LRCLK, PIN_I2SDAC_DATA);
  mp3 = new AudioGeneratorMP3();

// Display
  tft.init(135, 240);
  tft.setRotation(1);
  pinMode(PIN_TFT_BACKLIGHT, OUTPUT);
  digitalWrite(PIN_TFT_BACKLIGHT, HIGH); // Backlight on
  tft.fillScreen(ST77XX_BLACK);
  tft.setCursor(0, 0);
  tft.setTextSize(2);
  tft.setTextColor(ST77XX_RED);
  tft.print("R");
  tft.setTextColor(ST77XX_RED);
  tft.print("e");
  tft.setTextColor(ST77XX_ORANGE);
  tft.print("g");
  tft.setTextColor(ST77XX_ORANGE);
  tft.print("e");
  tft.setTextColor(ST77XX_YELLOW);
  tft.print("n");
  tft.setTextColor(ST77XX_YELLOW);
  tft.print("b");
  tft.setTextColor(ST77XX_GREEN);
  tft.print("o");
  tft.setTextColor(ST77XX_GREEN);
  tft.print("o");
  tft.setTextColor(ST77XX_CYAN);
  tft.print("g");
  tft.setTextColor(ST77XX_CYAN);
  tft.print("p");
  tft.setTextColor(ST77XX_BLUE);
  tft.print("i");
  tft.setTextColor(ST77XX_BLUE);
  tft.print("a");
  tft.setTextColor(ST77XX_MAGENTA);
  tft.print("n");
  tft.setTextColor(ST77XX_MAGENTA);
  tft.print("o");
}

void loop()
{
  if (digitalRead(PIN_TEST_BUTTON_RIGHT) == LOW)
  {
    if (mp3->isRunning())
      mp3->stop();
    file->open(right_h, sizeof(right_h));
    mp3->begin(file, out);
  }

  if (digitalRead(PIN_TEST_BUTTON_LEFT) == LOW)
  {
    if (mp3->isRunning())
      mp3->stop();
    file->open(left_h, sizeof(left_h));
    mp3->begin(file, out);
  }

  if (mp3->isRunning())
  {
    if (!mp3->loop()) mp3->stop();
  }
}
