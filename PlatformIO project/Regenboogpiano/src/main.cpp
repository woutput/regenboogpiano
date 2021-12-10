//// Important constants
#define LED_BRIGHTNESS 50 // 0...255
#define LED_DISPLAY_BRIGHTNESS LED_BRIGHTNESS // 0...255
#define LED_RINGS_BRIGHTNESS LED_BRIGHTNESS // 0...255

//// Pins
// DAC
#define PIN_DAC_BCLK     33 // was 15
#define PIN_DAC_LRCLK    25 // was 12
#define PIN_DAC_DATA     32 // was  2

// TFT display (fixed, do not change)
#define PIN_TFT_CS         5
#define PIN_TFT_RST       -1 // Or set to -1 and connect to Arduino RESET pin
#define PIN_TFT_DC        16
#define PIN_TFT_BACKLIGHT  4 // Display backlight pin
#define PIN_TFT_MOSI      19 // Data out
#define PIN_TFT_SCLK      18 // Clock out

// LEDs
#define PIN_LED_DISPLAY 27
#define PIN_LED_RINGS   26

// RFID reader
#define PIN_RFID_RESET  UINT8_MAX // not connected
#define PIN_RFID_CS      2 // was 27
#define PIN_RFID_SCK    12 // was 26
#define PIN_RFID_MISO   13 // was 33
#define PIN_RFID_MOSI   15 // was 25

// Test buttons on controller board
#define PIN_TEST_BUTTON_LEFT 0
#define PIN_TEST_BUTTON_RIGHT 35



//// Include libraries
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
#include <Adafruit_NeoMatrix.h>
#include <Adafruit_NeoPixel.h>
#include <MFRC522.h>

#include "left.h"
#include "right.h"



// Audio
AudioGeneratorMP3 *mp3;
AudioFileSourcePROGMEM *file;
AudioOutputI2S *out;

// TFT display
SPIClass* spi = &SPI;
Adafruit_ST7789 tft = Adafruit_ST7789(PIN_TFT_CS, PIN_TFT_DC, PIN_TFT_MOSI, PIN_TFT_SCLK, PIN_TFT_RST); // TODO: remove last argument, because default is already -1

// LED display
Adafruit_NeoMatrix LED_display = Adafruit_NeoMatrix(32, 8, PIN_LED_DISPLAY,
  NEO_MATRIX_TOP     + NEO_MATRIX_LEFT +
  NEO_MATRIX_COLUMNS + NEO_MATRIX_ZIGZAG,
  NEO_GRB            + NEO_KHZ800);

// LED rings
Adafruit_NeoPixel LED_rings = Adafruit_NeoPixel(32 * 8, PIN_LED_RINGS, NEO_GRB + NEO_KHZ800);

// RFID reader
MFRC522 mfrc522(PIN_RFID_CS, PIN_RFID_RESET);  // Create MFRC522 instance



//// Functions
void dump_byte_array(byte *buffer, byte bufferSize) {
  for (byte i = 0; i < bufferSize; i++) {
    Serial.print(buffer[i] < 0x10 ? " 0" : " ");
    Serial.print(buffer[i], HEX);
  }
}

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



//// Setup
void setup()
{
  // Debug to serial
  Serial.begin(115200);
	while (!Serial); // wait for serial port to connect. Needed for native USB port only
  Serial.println("Begin of setup");

  // WiFi
  WiFi.mode(WIFI_OFF); // TODO turn on WiFi later for firmware updates

  // Pins
  pinMode(PIN_TEST_BUTTON_LEFT, INPUT_PULLUP);
  pinMode(PIN_TEST_BUTTON_RIGHT, INPUT_PULLUP);

  // Audio
  audioLogger = &Serial;
  file = new AudioFileSourcePROGMEM(left_h, sizeof(left_h));
  out = new AudioOutputI2S();
  out->SetPinout(PIN_DAC_BCLK, PIN_DAC_LRCLK, PIN_DAC_DATA);
  mp3 = new AudioGeneratorMP3();

  // TFT display
  tft.init(135, 240);
  tft.setRotation(1);
  pinMode(PIN_TFT_BACKLIGHT, OUTPUT);
  digitalWrite(PIN_TFT_BACKLIGHT, HIGH); // Backlight on

  // LED display
  LED_display.begin();
  LED_display.setTextWrap(false);
  LED_display.setBrightness(LED_DISPLAY_BRIGHTNESS);
  LED_display.setTextColor(LED_display.Color(0, 0, 255));
  LED_display.show(); // Initialize all pixels to 'off'

  // // LED rings
  // LED_rings.begin();
  // LED_rings.setBrightness(LED_RINGS_BRIGHTNESS);
  // LED_rings.show(); // Initialize all pixels to 'off'

  // RFID reader
	SPI.begin(PIN_RFID_SCK, PIN_RFID_MISO, PIN_RFID_MOSI, PIN_RFID_CS);
	mfrc522.PCD_Init();
	delay(4); // Optional delay. Some board do need more time after init to be ready, see Readme
  mfrc522.PCD_SetAntennaGain(mfrc522.RxGain_max);

  Serial.println("End of setup");



  //// Debug/test only, TODO: remove this
  // // LED display
  // LED_display.fillScreen(0);
  // LED_display.setCursor(0, 0);
  // LED_display.print(F("Regenboogpiano"));
  // LED_display.show();
  // // LED rings
  // for(uint16_t i=0; i<LED_rings.numPixels(); i++)
  // {
  //   LED_rings.setPixelColor(i, i * 256 * 256);
  // }
  // LED_rings.show();
  // TFT display
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
  // RFID reader
	mfrc522.PCD_DumpVersionToSerial(); // Show details of PCD - MFRC522 Card Reader details
}



//// Loop
void loop()
{
  // Audio
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


  if ((millis() % 100) == 0)
  {
    // RFID reader
    if (mfrc522.PICC_IsNewCardPresent())
    {
      // Select one of the cards
      if (mfrc522.PICC_ReadCardSerial())
      {
        Serial.print(F("Card UID:"));
        // mfrc522.PICC_DumpToSerial(&(mfrc522.uid));
        dump_byte_array(mfrc522.uid.uidByte, mfrc522.uid.size);
        Serial.println(F(""));
        mfrc522.PICC_HaltA();
      }
    }
  }
}
