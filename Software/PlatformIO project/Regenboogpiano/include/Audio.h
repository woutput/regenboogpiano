#pragma once

#include <stdint.h>
#include <Defines.h>

// DAC
#define PIN_DAC_DATA     32
#define PIN_DAC_BCLK     33
#define PIN_DAC_LRCLK    25


#define NOTE_C5        0
#define NOTE_C5_SHARP  1
#define NOTE_D5        2
#define NOTE_D5_SHARP  3
#define NOTE_E5        4
#define NOTE_F5        5
#define NOTE_F5_SHARP  6
#define NOTE_G5        7
#define NOTE_G5_SHARP  8
#define NOTE_A5        9
#define NOTE_A5_SHARP 10
#define NOTE_B5       11
#define NOTE_C6       12
#define NOTE_C6_SHARP 13
#define NOTE_D6       14
#define NOTE_D6_SHARP 15
#define NOTE_E6       16
#define NOTE_F6       17
#define NOTE_F6_SHARP 18
#define NOTE_G6       19
#define NOTE_G6_SHARP 20
#define NOTE_A6       21
#define NOTE_A6_SHARP 22
#define NOTE_B6       23
#define NOTE_C7       24

extern bool busy_playing_MP3;
extern const char* const note_name_for_display[];
extern const char* const note_name_in_RTTTL[];
extern const char* const color_name[NUMBER_OF_NOTES];
extern const char* const animal_name[NUMBER_OF_NOTES];

void setup_audio();
void loop_audio();
void start_MP3(const char * filename_of_MP3);
char * piano_note_MP3_filename(int8_t note_number);
char * color_name_MP3_filename(int8_t note_number);
char * animal_name_MP3_filename(int8_t note_number);
