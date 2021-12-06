// I2S DAC
#define PIN_I2SDAC_BCLK     15
#define PIN_I2SDAC_LRCLK    12
#define PIN_I2SDAC_DATA      2

// micro SD card
#define PIN_SDCARD_HSPI_SCLK   25
#define PIN_SDCARD_HSPI_MISO   26
#define PIN_SDCARD_HSPI_MOSI   27
#define PIN_SDCARD_HSPI_SS     32

// TFT display (fixed, do not change)
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
#include "FS.h"
#include "SD.h"

#include "left.h"
#include "right.h"

// Audio
AudioGeneratorMP3 *mp3;
AudioFileSourcePROGMEM *file;
AudioOutputI2S *out;

// Display
SPIClass* spi = &SPI;
Adafruit_ST7789 tft = Adafruit_ST7789(PIN_TFT_CS, PIN_TFT_DC, PIN_TFT_MOSI, PIN_TFT_SCLK, PIN_TFT_RST);

SPIClass spiSD(HSPI);
File root;

void printDirectory(File dir, int numTabs) {
  while (true) {

    File entry =  dir.openNextFile();
    if (! entry) {
      // no more files
      break;
    }
    for (uint8_t i = 0; i < numTabs; i++) {
      Serial.print('\t');
    }
    Serial.print(entry.name());
    if (entry.isDirectory()) {
      Serial.println("/");
      printDirectory(entry, numTabs + 1);
    } else {
      // files have sizes, directories do not
      Serial.print("\t\t");
      Serial.println(entry.size(), DEC);
    }
    entry.close();
  }
}

void setup()
{
  WiFi.mode(WIFI_OFF); // TODO turn on later for firmware updates
  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  Serial.println("Begin of setup");

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

  // SD card
  spiSD.begin(PIN_SDCARD_HSPI_SCLK, PIN_SDCARD_HSPI_MISO, PIN_SDCARD_HSPI_MOSI, PIN_SDCARD_HSPI_SS);
  if (!SD.begin(PIN_SDCARD_HSPI_SS, spiSD))
  {
    Serial.println("SD card initialization failed!");
    while (1); // TODO add diagnostics
  }
  Serial.println("SD card initialization done.");

  root = SD.open("/");  // Debug only
  printDirectory(root, 0);  // Debug only

  Serial.println("End of setup");
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
