#pragma once

#include <stdint.h>

void setup_debug();
void loop_debug();
void log_this(const char * st);
char * int_to_char_pointer(int64_t int_in);