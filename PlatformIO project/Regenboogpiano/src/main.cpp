#define PIN_I2SDAC_BCLK     15
#define PIN_I2SDAC_LRCLK    12
#define PIN_I2SDAC_DATA      2

#define PIN_TEST_BUTTON_LEFT 0
#define PIN_TEST_BUTTON_RIGHT 35


//// Regenboogpiano op TFT

// #include <Adafruit_GFX.h>    // Core graphics library
// #include <Adafruit_ST7789.h> // Hardware-specific library for ST7789
// #include <SPI.h>

// #define TFT_CS        5
// #define TFT_RST       -1 // Or set to -1 and connect to Arduino RESET pin
// #define TFT_DC        16
// #define TFT_BACKLIGHT 4 // Display backlight pin
// #define TFT_MOSI      19  // Data out
// #define TFT_SCLK      18  // Clock out

// SPIClass* spi = &SPI;
// Adafruit_ST7789 tft = Adafruit_ST7789(TFT_CS, TFT_DC, TFT_MOSI, TFT_SCLK, TFT_RST);

// void setup(void) {
//   Serial.begin(115200);
//   Serial.println(F(""));
//   Serial.println(F("Start of setup"));

//   tft.init(135, 240);
//   tft.setRotation(1);
//   pinMode(TFT_BACKLIGHT, OUTPUT);
//   digitalWrite(TFT_BACKLIGHT, HIGH); // Backlight on
//   tft.fillScreen(ST77XX_BLACK);
//   tft.setCursor(0, 0);
//   tft.setTextSize(2);
//   tft.setTextColor(ST77XX_RED);
//   tft.print("R");
//   tft.setTextColor(ST77XX_RED);
//   tft.print("e");
//   tft.setTextColor(ST77XX_ORANGE);
//   tft.print("g");
//   tft.setTextColor(ST77XX_ORANGE);
//   tft.print("e");
//   tft.setTextColor(ST77XX_YELLOW);
//   tft.print("n");
//   tft.setTextColor(ST77XX_YELLOW);
//   tft.print("b");
//   tft.setTextColor(ST77XX_GREEN);
//   tft.print("o");
//   tft.setTextColor(ST77XX_GREEN);
//   tft.print("o");
//   tft.setTextColor(ST77XX_CYAN);
//   tft.print("g");
//   tft.setTextColor(ST77XX_CYAN);
//   tft.print("p");
//   tft.setTextColor(ST77XX_BLUE);
//   tft.print("i");
//   tft.setTextColor(ST77XX_BLUE);
//   tft.print("a");
//   tft.setTextColor(ST77XX_MAGENTA);
//   tft.print("n");
//   tft.setTextColor(ST77XX_MAGENTA);
//   tft.print("o");
//   Serial.println(F("End of setup"));
// }

// void loop()
// {
// }
































//// WAV from PROGMEM

// #include <Arduino.h>
// #include "AudioFileSourcePROGMEM.h"
// #include "AudioGeneratorWAV.h"
// #include "AudioOutputI2SNoDAC.h"

// #include "viola.h"

// #define PIN_TEST_BUTTON_LEFT 0
// #define PIN_TEST_BUTTON_RIGHT 35

// AudioGeneratorWAV *wav;
// AudioFileSourcePROGMEM *file;
// AudioOutputI2S *out;

// void setup()
// {
//   Serial.begin(115200);
//   Serial.printf("Begin of setup");

//   pinMode(PIN_TEST_BUTTON_LEFT, INPUT);
//   pinMode(PIN_TEST_BUTTON_RIGHT, INPUT);

//   audioLogger = &Serial;
//   file = new AudioFileSourcePROGMEM(viola, sizeof(viola) );
//   out = new AudioOutputI2S();
//   out->SetPinout(25, 26, 27);
//   wav = new AudioGeneratorWAV();
// }

// void loop()
// {
//   if (digitalRead(PIN_TEST_BUTTON_RIGHT) == LOW)
//   {
//     wav->stop();
//     file->open(viola, sizeof(viola) );
//     wav->begin(file, out);
//   }

//   if (wav->isRunning())
//   {
//     if (!wav->loop()) wav->stop();
//   }
// }

































//// Play 1 of 2 MP3s from SPIFFS after button push

// #include <Arduino.h>
// #include <WiFi.h>
// #include "SPIFFS.h"
// #include "AudioFileSourceSPIFFS.h"
// #include "AudioFileSourceBuffer.h"
// #include "AudioFileSourceID3.h"
// #include "AudioGeneratorMP3.h"
// #include "AudioOutputI2S.h"

// #define PIN_TEST_BUTTON_LEFT 0
// #define PIN_TEST_BUTTON_RIGHT 35

// AudioGeneratorMP3 *mp3;
// AudioFileSourceSPIFFS *file;
// AudioFileSourceBuffer *buff;
// AudioOutputI2S *out;
// AudioFileSourceID3 *id3;

// void setup()
// {
//   WiFi.mode(WIFI_OFF); 
//   Serial.begin(115200);
//   delay(1000);
//   SPIFFS.begin();
//   Serial.printf("Sample MP3 playback begins...\n");

//   pinMode(PIN_TEST_BUTTON_LEFT, INPUT_PULLUP);
//   pinMode(PIN_TEST_BUTTON_RIGHT, INPUT_PULLUP);

//   audioLogger = &Serial;
//   file = new AudioFileSourceSPIFFS("/right.mp3");
//   buff = new AudioFileSourceBuffer(file, 16 * 2048);
//   out = new AudioOutputI2S();
//   mp3 = new AudioGeneratorMP3();
// }

// void loop()
// {
//   if (digitalRead(PIN_TEST_BUTTON_RIGHT) == LOW)
//   {
//     if (mp3->isRunning())
//       mp3->stop();
//     file->open("/right.mp3");
//     mp3->begin(buff, out);
//   }

//   if (digitalRead(PIN_TEST_BUTTON_LEFT) == LOW)
//   {
//     if (mp3->isRunning())
//       mp3->stop();
//     file->open("/left.mp3");
//     mp3->begin(buff, out);
//   }

//   if (mp3->isRunning())
//   {
//     if (!mp3->loop()) mp3->stop();
//   }
// }
































//// English speech synthesis
// #include <Arduino.h>
// #include <ESP8266SAM.h>
// #include <AudioOutputI2S.h>

// AudioOutputI2S *out = NULL;

// void setup()
// {
//   out = new AudioOutputI2S();
//   out->SetPinout(25, 26, 27);
//   out->begin();

//   ESP8266SAM *sam = new ESP8266SAM;
//   sam->Say(out, "Can you hear me now?");
//   delay(500);
//   sam->Say(out, "The crazy fox jumps over the lazy dog");
//   delete sam;
// }

// void loop()
// {
// }






























//// MIDI from PROGMEM

// #include <Arduino.h>
// #include <WiFi.h>

// #include <AudioOutputNull.h>
// #include <AudioOutputI2S.h>
// #include <AudioGeneratorMIDI.h>
// #include "AudioFileSourcePROGMEM.h"

// #include "sf2.h"
// #include "mid.h"

// AudioFileSourcePROGMEM *sf2;
// AudioFileSourcePROGMEM *mid;
// AudioOutputI2S *dac;
// AudioGeneratorMIDI *midi;

// void setup()
// {
//   WiFi.mode(WIFI_OFF); 

//   Serial.begin(115200);
//   Serial.println("Starting up...\n");

//   audioLogger = &Serial;
//   sf2 = new AudioFileSourcePROGMEM(sf2_h, sizeof(sf2_h));
//   mid = new AudioFileSourcePROGMEM(mid_h, sizeof(mid_h));
//     dac = new AudioOutputI2S();
//   midi = new AudioGeneratorMIDI();
//   midi->SetSoundfont(sf2);
//   midi->SetSampleRate(22050);
//   Serial.printf("BEGIN...\n");
//   midi->begin(mid, dac);
// }

// void loop()
// {
//   if (midi->isRunning()) {
//     if (!midi->loop()) {
//       uint32_t e = millis();
//       midi->stop();
//     }
//   } else {
//     Serial.printf("MIDI done\n");
//     delay(1000);
//   }
// }






























//// Play MOD from PROGMEM

// #include <Arduino.h>
// #include "AudioFileSourcePROGMEM.h"
// #include "AudioGeneratorMOD.h"
// #include "AudioOutputI2S.h"
// #ifdef ESP32
//     #include <WiFi.h>
// #else
//     #include <ESP8266WiFi.h>
// #endif

// // enigma.mod sample from the mod archive: https://modarchive.org/index.php?request=view_by_moduleid&query=42146
// #include "enigma.h"

// AudioGeneratorMOD *mod;
// AudioFileSourcePROGMEM *file;
// AudioOutputI2S *out;

// void setup()
// {
//   WiFi.mode(WIFI_OFF); //WiFi.forceSleepBegin();
//   Serial.begin(115200);
//   delay(1000);

//   audioLogger = &Serial;
//   file = new AudioFileSourcePROGMEM( enigma_mod, sizeof(enigma_mod) );
//   // out = new AudioOutputI2S(0, 1); Uncomment this line, comment the next one to use the internal DAC channel 1 (pin25) on ESP32
//   out = new AudioOutputI2S();
//   mod = new AudioGeneratorMOD();
//   mod->SetBufferSize(3*1024);
//   mod->SetSampleRate(44100);
//   mod->SetStereoSeparation(32);
//   mod->begin(file, out);
// }

// void loop()
// {
//   if (mod->isRunning()) {
//     if (!mod->loop()) mod->stop();
//   } else {
//     Serial.printf("MOD done\n");
//     delay(1000);
//   }
// }
































//// Mixer met twee MP3s uit PROGMEM: mixt niet mooi en ruist

// #include <Arduino.h>
// #include <WiFi.h>

// #include "SPIFFS.h"
// #include "AudioFileSourcePROGMEM.h"
// #include "AudioGeneratorMP3.h"
// #include "AudioOutputI2S.h"
// #include "AudioOutputMixer.h"

// #define PIN_TEST_BUTTON_LEFT 0
// #define PIN_TEST_BUTTON_RIGHT 35

// #include "left.h"
// #include "right.h"

// AudioGeneratorMP3 *wav[2];
// AudioFileSourcePROGMEM *file[2];
// AudioOutputI2S *out;
// AudioOutputMixer *mixer;
// AudioOutputMixerStub *stub[2];

// void setup()
// {
//   WiFi.mode(WIFI_OFF); 
//   Serial.begin(115200);
//   SPIFFS.begin();
//   delay(1000);
//   Serial.printf("WAV start\n");

//   audioLogger = &Serial;
//   out = new AudioOutputI2S();
//   mixer = new AudioOutputMixer(32, out);

//   stub[0] = mixer->NewInput();
//   stub[0]->SetGain(0.1);
//   wav[0] = new AudioGeneratorMP3();
//   file[0] = new AudioFileSourcePROGMEM(left_h, sizeof(left_h));

//   stub[1] = mixer->NewInput();
//   stub[1]->SetGain(0.1);
//   wav[1] = new AudioGeneratorMP3();
//   file[1] = new AudioFileSourcePROGMEM(right_h, sizeof(right_h));

//   pinMode(PIN_TEST_BUTTON_LEFT, INPUT_PULLUP);
//   pinMode(PIN_TEST_BUTTON_RIGHT, INPUT_PULLUP);
// }

// void loop()
// {
//   if (digitalRead(PIN_TEST_BUTTON_RIGHT) == LOW)
//   {
//     Serial.printf("starting 1\n");
//     if (wav[0]->isRunning())
//       wav[0]->stop();
//     file[0]->open(left_h, sizeof(left_h));
//     wav[0]->begin(file[0], stub[0]);
//   }

//   if (digitalRead(PIN_TEST_BUTTON_LEFT) == LOW)
//   {
//     Serial.printf("starting 2\n");
//     if (wav[1]->isRunning())
//       wav[1]->stop();
//     file[1]->open(right_h, sizeof(right_h));
//     wav[1]->begin(file[1], stub[1]);
//   }

//   if (wav[0]->isRunning())
//   {
//     if (!wav[0]->loop()) { wav[0]->stop(); stub[0]->stop(); Serial.printf("stopping 1\n"); }
//   }

//   if (wav[1]->isRunning())
//   {
//     if (!wav[1]->loop()) { wav[1]->stop(); stub[1]->stop(); Serial.printf("stopping 2\n");}
//   }
// }
































//// Play 1 of 2 MP3s from PROGMEM after button push

#include <Arduino.h>
#include <WiFi.h>
#include "AudioFileSourcePROGMEM.h"
#include "AudioGeneratorMP3.h"
#include "AudioOutputI2S.h"

#include "left.h"
#include "right.h"

AudioGeneratorMP3 *mp3;
AudioFileSourcePROGMEM *file;
AudioOutputI2S *out;

void setup()
{
  WiFi.mode(WIFI_OFF); 
  Serial.begin(115200);
  delay(1000);
  Serial.printf("Sample MP3 playback begins...\n");

  pinMode(PIN_TEST_BUTTON_LEFT, INPUT_PULLUP);
  pinMode(PIN_TEST_BUTTON_RIGHT, INPUT_PULLUP);

  audioLogger = &Serial;
  file = new AudioFileSourcePROGMEM(left_h, sizeof(left_h));
  out = new AudioOutputI2S();
  out->SetPinout(PIN_I2SDAC_BCLK, PIN_I2SDAC_LRCLK, PIN_I2SDAC_DATA);
  mp3 = new AudioGeneratorMP3();
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
