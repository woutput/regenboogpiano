//// Important constants
#define LED_BRIGHTNESS 25 // 0...255
#define LED_DISPLAY_BRIGHTNESS LED_BRIGHTNESS // 0...255
#define LED_RINGS_BRIGHTNESS LED_BRIGHTNESS // 0...255

//// Pins
// DAC
#define PIN_DAC_DATA     32
#define PIN_DAC_BCLK     33
#define PIN_DAC_LRCLK    25

// TFT display (fixed, do not change)
#define PIN_TFT_CS         5
#define PIN_TFT_RST       -1 // not connected
#define PIN_TFT_DC        16
#define PIN_TFT_BACKLIGHT  4
#define PIN_TFT_MOSI      19
#define PIN_TFT_SCLK      18

// LEDs
#define PIN_LED_RINGS   26
#define PIN_LED_DISPLAY 27

// RFID reader
#define PIN_RFID_RESET  UINT8_MAX // not connected
#define PIN_RFID_CS     15
#define PIN_RFID_SCK    12
#define PIN_RFID_MISO   38
#define PIN_RFID_MOSI   13

// Shift registers
#define PIN_SHIFT_CLK   21
#define PIN_SHIFT_SHLD1 22
#define PIN_SHIFT_SHLD2 17
#define PIN_SHIFT_SHLD3  2
#define PIN_SHIFT_DATA  36

// Test buttons on controller board
#define PIN_TEST_BUTTON_LEFT 0
#define PIN_TEST_BUTTON_RIGHT 35

//// Less important constants
// TODO: change from 1 (test) to 3 (real)
#define NUMBER_OF_SHIFT_REGISTERS 1
#define NUMBER_OF_SHIFTS (NUMBER_OF_SHIFT_REGISTERS * 8)

// TODO: change from 1 (test) to 25 (real)
#define NUMBER_OF_LED_RINGS 1
#define NUMBER_OF_LEDS_PER_LED_RING 12

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



// // Audio
// AudioGeneratorMP3 *mp3;
// AudioFileSourcePROGMEM *file;
// AudioOutputI2S *out;

// TFT display
SPIClass* spi = &SPI;
Adafruit_ST7789 tft = Adafruit_ST7789(PIN_TFT_CS, PIN_TFT_DC, PIN_TFT_MOSI, PIN_TFT_SCLK, PIN_TFT_RST); // TODO: remove last argument, because default is already -1

// LED display
// Adafruit_NeoMatrix LED_display = Adafruit_NeoMatrix(32 * 6, 8, PIN_LED_DISPLAY,
//   NEO_MATRIX_TOP     + NEO_MATRIX_LEFT +
//   NEO_MATRIX_COLUMNS + NEO_MATRIX_ZIGZAG,
//   NEO_GRB            + NEO_KHZ800);
Adafruit_NeoPixel LED_display = Adafruit_NeoPixel(32*6*8, PIN_LED_DISPLAY, NEO_GRB + NEO_KHZ800); // TODO: remove this, test only

// // LED rings
// Adafruit_NeoPixel LED_rings = Adafruit_NeoPixel(NUMBER_OF_LEDS_PER_LED_RING * NUMBER_OF_LED_RINGS, PIN_LED_RINGS, NEO_GRB + NEO_KHZ800);

// // RFID reader
// MFRC522 mfrc522(PIN_RFID_CS, PIN_RFID_RESET);  // Create MFRC522 instance

// // Shift registers
// int touch_sensor_state[NUMBER_OF_SHIFTS]; // TODO change to boolean when possible



// //// Functions
// void dump_byte_array(byte *buffer, byte bufferSize) {
//   for (byte i = 0; i < bufferSize; i++) {
//     Serial.print(buffer[i] < 0x10 ? " 0" : " ");
//     Serial.print(buffer[i], HEX);
//   }
// }

// void printDirectory(File dir, int numTabs) {
//   while (true) {

//     File entry =  dir.openNextFile();
//     if (! entry) {
//       // no more files
//       break;
//     }
//     for (uint8_t i = 0; i < numTabs; i++) {
//       Serial.print('\t');
//     }
//     Serial.print(entry.name());
//     if (entry.isDirectory()) {
//       Serial.println("/");
//       printDirectory(entry, numTabs + 1);
//     } else {
//       // files have sizes, directories do not
//       Serial.print("\t\t");
//       Serial.println(entry.size(), DEC);
//     }
//     entry.close();
//   }
// }



//// Setup
void setup()
{
  // Debug to serial
  Serial.begin(115200);
	while (!Serial); // wait for serial port to connect. Needed for native USB port only
  Serial.println("Begin of setup");

//   // WiFi
//   WiFi.mode(WIFI_OFF); // TODO turn on WiFi later for firmware updates

//   // Set pin modes
//   // Test buttons
//   pinMode(PIN_TEST_BUTTON_LEFT, INPUT_PULLUP);
//   pinMode(PIN_TEST_BUTTON_RIGHT, INPUT_PULLUP);
//   // Shift registers
//   pinMode(PIN_SHIFT_CLK, OUTPUT);
//   pinMode(PIN_SHIFT_SHLD1, OUTPUT);
//   pinMode(PIN_SHIFT_SHLD2, OUTPUT);
//   pinMode(PIN_SHIFT_SHLD3, OUTPUT);
//   pinMode(PIN_SHIFT_DATA, INPUT);

//   // // Audio
//   // audioLogger = &Serial;
//   // file = new AudioFileSourcePROGMEM(left_h, sizeof(left_h));
//   // out = new AudioOutputI2S();
//   // out->SetPinout(PIN_DAC_BCLK, PIN_DAC_LRCLK, PIN_DAC_DATA);
//   // mp3 = new AudioGeneratorMP3();

  // TFT display
  tft.init(135, 240);
  tft.setRotation(1);
  pinMode(PIN_TFT_BACKLIGHT, OUTPUT);
  digitalWrite(PIN_TFT_BACKLIGHT, HIGH); // Backlight on

  // LED display
  LED_display.begin();
  LED_display.setBrightness(LED_DISPLAY_BRIGHTNESS);
  LED_display.show(); // Initialize all pixels to 'off'

//   // LED rings
//   LED_rings.begin();
//   LED_rings.setBrightness(LED_RINGS_BRIGHTNESS);
//   LED_rings.show(); // Initialize all pixels to 'off'

//   // // RFID reader
// 	// SPI.begin(PIN_RFID_SCK, PIN_RFID_MISO, PIN_RFID_MOSI, PIN_RFID_CS);
// 	// mfrc522.PCD_Init();
// 	// delay(4); // Optional delay. Some board do need more time after init to be ready, see Readme
//   // mfrc522.PCD_SetAntennaGain(mfrc522.RxGain_max);

  Serial.println("End of setup");



//   //// Debug/test only, TODO: remove this
  // LED display
  // LED_display.setTextWrap(false);
  // LED_display.setTextColor(LED_display.Color(0, 0, 255));
  // LED_display.fillScreen(0);
  // LED_display.setCursor(0, 0);
  // LED_display.print(F("Regenboogpiano"));
  // LED_display.show();
//   // LED rings
//   for(uint16_t i = 0; i < LED_rings.numPixels(); i++)
//   {
//     LED_rings.setPixelColor(i, i * 21);
//   }
//   LED_rings.show();
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
//   // // RFID reader
// 	// mfrc522.PCD_DumpVersionToSerial(); // Show details of PCD - MFRC522 Card Reader details
}

// // LED display
// const uint16_t colors[] = {
//   LED_display.Color(255, 0, 0), LED_display.Color(0, 255, 0), LED_display.Color(0, 0, 255) };

// int x    = LED_display.width();
// int pass = 0;

// void loop() {
//   LED_display.fillScreen(0);
//   LED_display.setCursor(x, 0);
//   LED_display.print(F("Regenboogpiano"));
//   if(--x < -128) {
//     x = LED_display.width();
//     if(++pass >= 3) pass = 0;
//     LED_display.setTextColor(colors[pass]);
//   }
//   LED_display.show();
//   delay(20);
// }


// LED ring rainbow demo
uint16_t step = 0;

//// Loop
void loop()
{
//   // // Audio
//   // if (digitalRead(PIN_TEST_BUTTON_RIGHT) == LOW)
//   // {
//   //   if (mp3->isRunning())
//   //     mp3->stop();
//   //   file->open(right_h, sizeof(right_h));
//   //   mp3->begin(file, out);
//   // }

//   // if (digitalRead(PIN_TEST_BUTTON_LEFT) == LOW)
//   // {
//   //   if (mp3->isRunning())
//   //     mp3->stop();
//   //   file->open(left_h, sizeof(left_h));
//   //   mp3->begin(file, out);
//   // }

//   // if (mp3->isRunning())
//   // {
//   //   if (!mp3->loop()) mp3->stop();
//   // }


//   //   // RFID reader
//   // if ((millis() % 100) == 0)
//   // {
//   //   if (mfrc522.PICC_IsNewCardPresent())
//   //   {
//   //     // Select one of the cards
//   //     if (mfrc522.PICC_ReadCardSerial())
//   //     {
//   //       Serial.print(F("Card UID:"));
//   //       // mfrc522.PICC_DumpToSerial(&(mfrc522.uid));
//   //       dump_byte_array(mfrc522.uid.uidByte, mfrc522.uid.size);
//   //       Serial.println(F(""));
//   //       mfrc522.PICC_HaltA();
//   //     }
//   //   }
//   // }


//   // // Shift registers
//   // // Load inputs to shift registers
//   // digitalWrite(PIN_SHIFT_CLK, LOW);
//   // digitalWrite(PIN_SHIFT_SHLD1, LOW);
//   // digitalWrite(PIN_SHIFT_SHLD2, LOW);
//   // digitalWrite(PIN_SHIFT_SHLD3, LOW);
//   // digitalWrite(PIN_SHIFT_CLK, HIGH);
//   // digitalWrite(PIN_SHIFT_CLK, LOW);
//   // digitalWrite(PIN_SHIFT_SHLD1, HIGH);
//   // digitalWrite(PIN_SHIFT_SHLD2, HIGH);
//   // digitalWrite(PIN_SHIFT_SHLD3, HIGH);
//   // // Now shift out data
//   // for (uint8_t shifts = 0; shifts < NUMBER_OF_SHIFTS; shifts++)
//   // {
//   //   digitalWrite(PIN_SHIFT_CLK, HIGH);
//   //   touch_sensor_state[shifts] = digitalRead(PIN_SHIFT_DATA);
//   //   Serial.print(touch_sensor_state[shifts]);
//   //   digitalWrite(PIN_SHIFT_CLK, LOW);
//   // }
//   // Serial.println("");

//   // LED ring rainbow demo
//   step = step + 50;
//   LED_rings.rainbow(step);
//   LED_rings.show();

  // TODO: remove this
  step = step + 1024;
  LED_display.rainbow(step);
  LED_display.show();
}
















































// #include <WiFi.h>
// #include <HTTPClient.h>
// #include <Update.h>

// #define HOST "https://www.ouderraadgroteheide.be/regenboogpiano_firmware/rainbow_ring.bin"

// HTTPClient client;
// char* ssid = "WLAND_gast";
// char* password = "eenvoudig";
// int totalLength;
// int currentLength = 0;


// // Function to update firmware incrementally
// // Buffer is declared to be 128 so chunks of 128 bytes
// // from firmware is written to device until server closes
// void updateFirmware(uint8_t *data, size_t len){
//   Update.write(data, len);
//   currentLength += len;
//   // Print dots while waiting for update to finish
//   // Serial.print('.');
//   // if current length of written firmware is not equal to total firmware size, repeat
//   if(currentLength != totalLength) return;
//   Update.end(true);
//   Serial.printf("\nUpdate Success, Total Size: %u\nRebooting...\n", currentLength);
//   // Restart ESP32 to see changes 
//   ESP.restart();
// }



// void setup() {
//   Serial.begin(115200);
//   // Start WiFi connection
//   // WiFi.mode(WIFI_MODE_STA);        
//   WiFi.begin(ssid, password);
//   while (WiFi.status() != WL_CONNECTED) {
//       delay(500);
//       Serial.print(".");
//   }

//   Serial.println("");
//   Serial.println("WiFi connected");
//   Serial.println("IP address: ");
//   Serial.println(WiFi.localIP());
//   // Connect to external web server
//   client.begin(HOST);
//   // Get file, just to check if each reachable
//   int resp = client.GET();
//   Serial.print("Response: ");
//   Serial.println(resp);
//   // If file is reachable, start downloading
//   if(resp == 200){
//       // get length of document (is -1 when Server sends no Content-Length header)
//       totalLength = client.getSize();
//       // transfer to local variable
//       int len = totalLength;
//       // this is required to start firmware update process
//       Update.begin(UPDATE_SIZE_UNKNOWN);
//       Serial.printf("FW Size: %u\n",totalLength);
//       // create buffer for read
//       uint8_t buff[128] = { 0 };
//       // get tcp stream
//       WiFiClient * stream = client.getStreamPtr();
//       // read all data from server
//       Serial.println("Updating firmware...");
//       while(client.connected() && (len > 0 || len == -1)) {
//            // get available data size
//            size_t size = stream->available();
//            if(size) {
//               // read up to 128 byte
//               int c = stream->readBytes(buff, ((size > sizeof(buff)) ? sizeof(buff) : size));
//               // pass to function
//               updateFirmware(buff, c);
//               if(len > 0) {
//                  len -= c;
//               }
//            }
//            delay(1);
//       }
//   }else{
//     Serial.println("Cannot download firmware file");
//   }
//   client.end();
  
// }

// void loop() {}


