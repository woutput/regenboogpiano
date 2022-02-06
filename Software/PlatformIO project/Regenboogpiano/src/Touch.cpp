#include <defines.h>
#include <Touch.h>
#include <Main.h>
#include <LEDs.h>
#include <Debug.h>
#include <Arduino.h>

bool new_touch_sensor_state[NUMBER_OF_TOUCH_SENSORS];
bool old_touch_sensor_state[NUMBER_OF_TOUCH_SENSORS];
bool button_rising_edge[NUMBER_OF_TOUCH_SENSORS];
bool any_button_rising_edge = false;
uint32_t start_timeout_read_shift_registers = 0;
int8_t index_of_touched_button = -1; // -1 means: no button touched; including menu button
int8_t index_of_touched_key = -1; // -1 means: no button touched; excluding menu button

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
    if (current_time_since_POR__ms > start_timeout_read_shift_registers + TIMEOUT_SHIFT_REGISTERS__MS)
    {
        start_timeout_read_shift_registers = current_time_since_POR__ms;

        // Read inputs to new_touch_sensor_state

        // Load inputs to shift registers
        digitalWrite(PIN_SHIFT_SHLD, LOW);
        digitalWrite(PIN_SHIFT_CLK, LOW);
        digitalWrite(PIN_SHIFT_CLK, HIGH);
        digitalWrite(PIN_SHIFT_SHLD, HIGH);
        // Now shift out data
        for (uint8_t shifts = 0; shifts < NUMBER_OF_SHIFTS; shifts++)
        {
            new_touch_sensor_state[NUMBER_OF_SHIFTS - shifts - 1] = digitalRead(PIN_SHIFT_DATA);
            // Serial.print(new_touch_sensor_state[shifts]);
            digitalWrite(PIN_SHIFT_CLK, LOW);
            digitalWrite(PIN_SHIFT_CLK, HIGH);
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
        any_button_rising_edge = false;
        index_of_touched_button = -1;
        index_of_touched_key = -1;
        // for (uint8_t i = 0; i < 1; i++) // TODO replace 1 by 0<NUMBER_OF_TOUCH_SENSORS
        for (uint8_t i = 0; i < 8; i++) // TODO replace by 0<NUMBER_OF_TOUCH_SENSORS
        {
            if ((old_touch_sensor_state[i] == false) && (new_touch_sensor_state[i] == true))
            {
                button_rising_edge[i] = true;
                any_button_rising_edge = true;
                index_of_touched_button = i;
                log_this("Pressed button:");
                log_this(int64_to_char_pointer(index_of_touched_button));
                // log_this(int_to_char_pointer(random(100)));
                if (i != 25)
                {
                    index_of_touched_key = i;
                }
            }
            else
            {
                button_rising_edge[i] = false;
            }
        }

        for (uint8_t i = 25; i < 26; i++) // TODO test only, for produciton remove this copied loop
        {
            if ((old_touch_sensor_state[i] == false) && (new_touch_sensor_state[i] == true))
            {
                button_rising_edge[i] = true;
                any_button_rising_edge = true;
                index_of_touched_button = i;
                log_this("Pressed button:");
                log_this(int64_to_char_pointer(index_of_touched_button));
                // log_this(int_to_char_pointer(random(100)));
                if (i != 25)
                {
                    index_of_touched_key = i;
                }
            }
            else
            {
                button_rising_edge[i] = false;
            }
        }

        // Copy new_touch_sensor_state to old_touch_sensor_state
        for (uint8_t i = 0; i < NUMBER_OF_TOUCH_SENSORS; i++)
        {
            old_touch_sensor_state[i] = new_touch_sensor_state[i];
        }
    }
}