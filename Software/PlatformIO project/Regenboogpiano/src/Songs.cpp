#include <Songs.h>
#include <Audio.h>
#include <Arduino.h>

uint8_t total_number_of_songs = 0; // data type must to able to store MAXIMUM_NUMBER_OF_SONGS // TODO Fill this value during firmware/song update
char song_name[MAXIMUM_NUMBER_OF_SONGS][MAXIMUM_SONG_NAME_LENGTH]; // Fill this array during firmware/song update
uint8_t note_in_song[MAXIMUM_NUMBER_OF_SONGS][MAXIMUM_NUMBER_OF_NOTES_PER_SONG]; // [song_index, note_index] values 0...24 for keys C5 to C7 // TODO Fill this array during firmware/song update
uint8_t number_of_notes_per_song[MAXIMUM_NUMBER_OF_SONGS]; // TODO Fill this array during firmware/song update

void setup_songs()
{
    // defaults
    // d uration
    // o ctave
    // b eats per minute

    // EftelingCarnavalFestival:d=4,o=6,b=225:c,p,a5,f5,2c,a5,f5,g5,8p,8c5,2c.5,8p,2p,2c,a#5,g5,2c,a#5,g5,1f5
    // EftelingCarnavalFestival:d=4,o=6,b=225:c6,p,a5,f5,2c6,a5,f5,g5,8p,8c5,2c.5,8p,2p,2c6,a#5,g5,2c6,a#5,g5,1f5
    // EftelingCarnavalFestival:d=4,o=6,b=225:c6,a5,f5,2c6,a5,f5,g5,8c5,2c.5,2c6,a#5,g5,2c6,a#5,g5,1f5
    // EftelingCarnavalFestival:d=4,o=6,b=225:2c6,a5,f5,2c6,a5,f5,g5,8c5,2c.5,2c6,a#5,g5,2c6,a#5,g5,1f5
    // EftelingCarnavalFestival:d=4,o=6,b=225:2c6,4a5,4f5,2c6,4a5,4f5,4g5,8c5,2c.5,2c6,4a#5,4g5,2c6,4a#5,4g5,1f5
    // EftelingCarnavalFestival:b=225:2c6,4a5,4f5,2c6,4a5,4f5,4g5,8c5,2c.5,2c6,4a#5,4g5,2c6,4a#5,4g5,1f5
    // EftelingCarnavalFestival::8c6,16a5,16f5,8c6,16a5,16f5,16g5,32c5,8c.5,8c6,16a#5,16g5,8c6,16a#5,16g5,4f5
    strcpy(song_name[0], "Efteling - Carnaval festival");
    note_in_song[0][0] = NOTE_C6;
    note_in_song[0][1] = NOTE_A5;
    note_in_song[0][2] = NOTE_F5;
    note_in_song[0][3] = NOTE_C6;
    note_in_song[0][4] = NOTE_A5;
    note_in_song[0][5] = NOTE_F5;
    note_in_song[0][6] = NOTE_G5;
    note_in_song[0][7] = NOTE_C5;
    note_in_song[0][8] = NOTE_C5;
    note_in_song[0][9] = NOTE_C6;
    note_in_song[0][10] = NOTE_A5_SHARP;
    note_in_song[0][11] = NOTE_G5;
    note_in_song[0][12] = NOTE_C6;
    note_in_song[0][13] = NOTE_A5_SHARP;
    note_in_song[0][14] = NOTE_G5;
    note_in_song[0][15] = NOTE_F5;
    number_of_notes_per_song[0] = 16;

    total_number_of_songs = 1;
}