#pragma once

#include <stdint.h>

// Shift registers
#define PIN_SHIFT_CLK   21
#define PIN_SHIFT_SHLD  22
#define PIN_SHIFT_DATA  36

// Remaining touch buttons
#define PIN_TOUCH_MENU  37
#define PIN_TOUCH_25    17

#define TIMEOUT_SHIFT_REGISTERS__MS 50

#define NUMBER_OF_SHIFT_REGISTERS 3
#define NUMBER_OF_SHIFTS (NUMBER_OF_SHIFT_REGISTERS * 8)
#define NUMBER_OF_TOUCH_SENSORS (NUMBER_OF_SHIFTS + 1 + 1) // T1...T24 + T25 + Tmenu

#define BUTTON_TOUCH_1 0
#define BUTTON_TOUCH_2 1
#define BUTTON_TOUCH_3 2
#define BUTTON_TOUCH_4 3
#define BUTTON_TOUCH_5 4
#define BUTTON_TOUCH_6 5
#define BUTTON_TOUCH_7 6
#define BUTTON_TOUCH_8 7
#define BUTTON_TOUCH_9 8
#define BUTTON_TOUCH_10 9
#define BUTTON_TOUCH_11 10
#define BUTTON_TOUCH_12 11
#define BUTTON_TOUCH_13 12
#define BUTTON_TOUCH_14 13
#define BUTTON_TOUCH_15 14
#define BUTTON_TOUCH_16 15
#define BUTTON_TOUCH_17 16
#define BUTTON_TOUCH_18 17
#define BUTTON_TOUCH_19 18
#define BUTTON_TOUCH_20 19
#define BUTTON_TOUCH_21 20
#define BUTTON_TOUCH_22 21
#define BUTTON_TOUCH_23 22
#define BUTTON_TOUCH_24 23
#define BUTTON_TOUCH_25 24
#define BUTTON_MENU 25

extern bool new_touch_sensor_state[NUMBER_OF_TOUCH_SENSORS];
extern bool old_touch_sensor_state[NUMBER_OF_TOUCH_SENSORS];
extern bool button_rising_edge[NUMBER_OF_TOUCH_SENSORS];
extern bool any_button_rising_edge;
extern bool any_key_rising_edge;
extern int8_t index_of_touched_button;
extern int8_t index_of_touched_key;

void setup_touch();
void loop_touch();
