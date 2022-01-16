#include <defines.h>
#include <Audio.h>
#include <Debug.h>
#include "AudioFileSourcePROGMEM.h"
#include "AudioGeneratorMP3.h"
#include "AudioOutputI2S.h"

// TODO: test only
#include "left.h"
#include "right.h"

AudioGeneratorMP3 *mp3;
AudioFileSourcePROGMEM *file;
AudioOutputI2S *out;
bool busy_playing_MP3 = false;

const char* const note_name_without_octave[] = {"C",
                                                "C#",
                                                "D",
                                                "D#",
                                                "E",
                                                "F",
                                                "F#",
                                                "G",
                                                "G#",
                                                "A",
                                                "A#",
                                                "B",
                                                "C",
                                                "C#",
                                                "D",
                                                "D#",
                                                "E",
                                                "F",
                                                "F#",
                                                "G",
                                                "G#",
                                                "A",
                                                "A#",
                                                "B",
                                                "C"};

const char* const note_name_with_octave[] =   { "C5",
                                                "C5#",
                                                "D5",
                                                "D5#",
                                                "E5",
                                                "F5",
                                                "F5#",
                                                "G5",
                                                "G5#",
                                                "A5",
                                                "A5#",
                                                "B5",
                                                "C6",
                                                "C6#",
                                                "D6",
                                                "D6#",
                                                "E6",
                                                "F6",
                                                "F6#",
                                                "G6",
                                                "G6#",
                                                "A6",
                                                "A6#",
                                                "B6",
                                                "C7"};

const char* const color_name[NUMBER_OF_NOTES] = {"rood",
                                                 "zwart",
                                                 "oranje",
                                                 "zwart",
                                                 "oranje",
                                                 "geel",
                                                 "zwart",
                                                 "groen",
                                                 "zwart",
                                                 "groen",
                                                 "zwart",
                                                 "groen",
                                                 "groen",
                                                 "zwart",
                                                 "blauw",
                                                 "zwart",
                                                 "blauw",
                                                 "blauw",
                                                 "zwart",
                                                 "blauw",
                                                 "zwart",
                                                 "paars",
                                                 "zwart",
                                                 "paars",
                                                 "paars"};
                                                //  "indigo",
                                                //  "violet"

const char* const animal_name[NUMBER_OF_NOTES] =   {"paard",
                                                    "haan",
                                                    "leeuw",
                                                    "ezel",
                                                    "schaap",
                                                    "kat",
                                                    "olifant",
                                                    "kip",
                                                    "koe",
                                                    "hond",
                                                    "X", // TODO
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X",
                                                    "X"};

void setup_audio()
{
    audioLogger = &Serial;
    file = new AudioFileSourcePROGMEM(left_h, sizeof(left_h));
    out = new AudioOutputI2S();
    out->SetPinout(PIN_DAC_BCLK, PIN_DAC_LRCLK, PIN_DAC_DATA);
    mp3 = new AudioGeneratorMP3();
}

void loop_audio()
{
    // if (digitalRead(PIN_TEST_BUTTON_RIGHT) == LOW)
    // {
    //     if (mp3->isRunning())
    //         mp3->stop();
    //         file->open(right_h, sizeof(right_h));
    //         mp3->begin(file, out);
    //     }

    // if (digitalRead(PIN_TEST_BUTTON_LEFT) == LOW)
    // {
    //     if (mp3->isRunning())
    //         mp3->stop();
    //         file->open(left_h, sizeof(left_h));
    //         mp3->begin(file, out);
    //     }

    // if (mp3->isRunning())
    // {
    //    if (!mp3->loop()) mp3->stop();
    // }
    // TODO implement
    busy_playing_MP3 = false;
}

void start_MP3(const char * filename_of_MP3)
{
    busy_playing_MP3 = true;
    log_this("Started playing MP3 file:");
    log_this(filename_of_MP3);
}

char * piano_note_MP3_filename(int8_t note_number)
{
    // TODO implement
}

char * color_name_MP3_filename(int8_t note_number)
{
    // TODO implement
}
