#include <defines.h>
#include <Touch.h>
#include <Main.h>
#include <LEDs.h>
#include <Debug.h>
#include <Arduino.h>

bool new_touch_sensor_state[NUMBER_OF_TOUCH_SENSORS];
bool old_touch_sensor_state[NUMBER_OF_TOUCH_SENSORS];
bool button_rising_edge[NUMBER_OF_TOUCH_SENSORS];
uint32_t start_timeout_read_shift_registers = 0;

void setup_touch()
{
    // Shift registers
    pinMode(PIN_SHIFT_CLK, OUTPUT);
    pinMode(PIN_SHIFT_SHLD, OUTPUT);
    pinMode(PIN_SHIFT_DATA, INPUT);

    // Single pins for 25th key and menu button
    pinMode(PIN_TOUCH_25, INPUT);
    pinMode(PIN_TOUCH_MENU, INPUT);
}

void loop_touch()
{
    uint8_t i;
    // TODO: do this less frequently; maybe once every 100 ms?
    if (current_time_since_POR__ms > start_timeout_read_shift_registers + TIMEOUT_SHIFT_REGISTERS__MS)
    {
        start_timeout_read_shift_registers = current_time_since_POR__ms;

        // Read inputs to new_touch_sensor_state
        // Load inputs to shift registers
        digitalWrite(PIN_SHIFT_CLK, LOW);
        digitalWrite(PIN_SHIFT_SHLD, LOW);
        digitalWrite(PIN_SHIFT_CLK, HIGH);
        digitalWrite(PIN_SHIFT_CLK, LOW);
        digitalWrite(PIN_SHIFT_SHLD, HIGH);
        // Now shift out data
        for (uint8_t shifts = 0; shifts < NUMBER_OF_SHIFTS; shifts++)
        {
            digitalWrite(PIN_SHIFT_CLK, HIGH);
            new_touch_sensor_state[shifts] = digitalRead(PIN_SHIFT_DATA);
            // Serial.print(touch_sensor_state[shifts]);
            digitalWrite(PIN_SHIFT_CLK, LOW);
        }
        // Serial.println("");

        if (digitalRead(PIN_TOUCH_25) == HIGH)
        {
            new_touch_sensor_state[24] = true;
        }
        else
        {
            new_touch_sensor_state[24] = false;
        }

        if (digitalRead(PIN_TOUCH_MENU) == HIGH)
        {
            new_touch_sensor_state[25] = true;
        }
        else
        {
            new_touch_sensor_state[25] = false;
        }

        // Conclude button_rising_edge from new_touch_sensor_state and old_touch_sensor_state
        for (i = 0; i < NUMBER_OF_TOUCH_SENSORS; i++)
        {
            if ((new_touch_sensor_state[i] == true) && (new_touch_sensor_state[i] == false))
            {
                button_rising_edge[i] = true;
            }
            else
            {
                button_rising_edge[i] = false;
            }
        }

        // Copy new_touch_sensor_state to old_touch_sensor_state
        for (i = 0; i < NUMBER_OF_TOUCH_SENSORS; i++)
        {
            old_touch_sensor_state[i] = new_touch_sensor_state[i];
        }
    }
}