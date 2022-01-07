// TODO
// Use multicore?

#include <defines.h>
#include <Main.h>
#include <Debug.h>
#include <Wifi_stuff.h>
#include <Touch.h>
#include <Audio.h>
#include <LEDs.h>
#include <RFID.h>
#include <State_machine.h>

void setup()
{
    setup_debug();
    log_this("Begin of setup");
    setup_wifi();
    setup_touch();
    setup_audio();
    setup_LEDs();
    setup_RFID();
    log_this("End of setup");
}

void loop()
{
    current_time_since_POR__ms = millis();
    loop_debug();
    loop_wifi();
    loop_touch();
    loop_audio();
    loop_LEDs();
    loop_state_machine();
}



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
//   // TFT display
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
//   // // RFID reader
// 	// mfrc522.PCD_DumpVersionToSerial(); // Show details of PCD - MFRC522 Card Reader details

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
// uint16_t step = 0;

//   step = step + 50;
//   LED_rings.rainbow(step);
//   LED_rings.show();

  // TODO: remove this
//   step = step + 1024;
//   LED_display.rainbow(step);
//   LED_display.show();
