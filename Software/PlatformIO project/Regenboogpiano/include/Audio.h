#pragma once

#include <stdint.h>

extern bool busy_playing_MP3;
extern const char* const note_name_with_octave[];
extern const char* const note_name_without_octave[];
extern const char* const color_name[NUMBER_OF_NOTES];
extern const char* const animal_name[NUMBER_OF_NOTES];

void setup_audio();
void loop_audio();
void start_MP3(const char * filename_of_MP3);
char * piano_note_MP3_filename(int8_t note_number);
char * color_name_MP3_filename(int8_t note_number);
char * animal_name_MP3_filename(int8_t note_number);
