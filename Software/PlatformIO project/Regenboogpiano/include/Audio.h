#pragma once

extern bool busy_playing_MP3;
extern const char* const piano_note_MP3_filename[];

void setup_audio();
void loop_audio();
void start_MP3(const char * filename_of_MP3);
