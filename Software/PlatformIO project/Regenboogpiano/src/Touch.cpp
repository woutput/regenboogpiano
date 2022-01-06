#include <defines.h>
#include <Touch.h>
#include <LEDs.h>
#include <Debug.h>
#include <Arduino.h>

int touch_sensor_state[NUMBER_OF_SHIFTS]; // TODO change to boolean when possible

void setup_touch()
{
    // Shift registers
    pinMode(PIN_SHIFT_CLK, OUTPUT);
    pinMode(PIN_SHIFT_SHLD, OUTPUT);
    pinMode(PIN_SHIFT_DATA, INPUT);

    // Single pins for 25th key and menu button
    pinMode(PIN_TOUCH_MENU, INPUT);
    pinMode(PIN_TOUCH_25, INPUT);
}

void loop_touch()
{
    // // TODO: do this less frequent; maybe once every 100 ms?
    // // Load inputs to shift registers
    // digitalWrite(PIN_SHIFT_CLK, LOW);
    // digitalWrite(PIN_SHIFT_SHLD, LOW);
    // digitalWrite(PIN_SHIFT_CLK, HIGH);
    // digitalWrite(PIN_SHIFT_CLK, LOW);
    // digitalWrite(PIN_SHIFT_SHLD, HIGH);
    // // Now shift out data
    // for (uint8_t shifts = 0; shifts < NUMBER_OF_SHIFTS; shifts++)
    // {
    //     digitalWrite(PIN_SHIFT_CLK, HIGH);
    //     touch_sensor_state[shifts] = digitalRead(PIN_SHIFT_DATA);
    //     Serial.print(touch_sensor_state[shifts]);
    //     digitalWrite(PIN_SHIFT_CLK, LOW);
    // }
    // Serial.println("");

    if (digitalRead(PIN_TOUCH_MENU) == HIGH)
    {
        LED_rings.rainbow();
        log_this("Touched");
    }
    else
    {
        LED_rings.clear();
        log_this("Released");
    }
    LED_rings.show();
}