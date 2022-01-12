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

const char* const note_name[] =               { "C1",
                                                "C1#",
                                                "D1",
                                                "D1#",
                                                "E1",
                                                "F1",
                                                "F1#",
                                                "G1",
                                                "G1#",
                                                "A2",
                                                "A2#",
                                                "B2",
                                                "C2",
                                                "C2#",
                                                "D2",
                                                "D2#",
                                                "E2",
                                                "F2",
                                                "F2#",
                                                "G2",
                                                "G2#",
                                                "A3",
                                                "A3#",
                                                "B3",
                                                "C3"};

const char* const piano_note_MP3_filename[] = { "piano/C1.mp3",
                                                "piano/C1#.mp3",
                                                "piano/D1.mp3",
                                                "piano/D1#.mp3",
                                                "piano/E1.mp3",
                                                "piano/F1.mp3",
                                                "piano/F1#.mp3",
                                                "piano/G1.mp3",
                                                "piano/G1#.mp3",
                                                "piano/A2.mp3",
                                                "piano/A2#.mp3",
                                                "piano/B2.mp3",
                                                "piano/C2.mp3",
                                                "piano/C2#.mp3",
                                                "piano/D2.mp3",
                                                "piano/D2#.mp3",
                                                "piano/E2.mp3",
                                                "piano/F2.mp3",
                                                "piano/F2#.mp3",
                                                "piano/G2.mp3",
                                                "piano/G2#.mp3",
                                                "piano/A3.mp3",
                                                "piano/A3#.mp3",
                                                "piano/B3.mp3",
                                                "piano/C3.mp3"};

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