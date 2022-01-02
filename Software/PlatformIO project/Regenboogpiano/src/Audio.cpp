#include <Audio.h>
#include "AudioFileSourcePROGMEM.h"
#include "AudioGeneratorMP3.h"
#include "AudioOutputI2S.h"

// Audio
AudioGeneratorMP3 *mp3;
AudioFileSourcePROGMEM *file;
AudioOutputI2S *out;

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
    // Audio
    if (digitalRead(PIN_TEST_BUTTON_RIGHT) == LOW)
    {
        if (mp3->isRunning())
            mp3->stop();
            file->open(right_h, sizeof(right_h));
            mp3->begin(file, out);
        }

    if (digitalRead(PIN_TEST_BUTTON_LEFT) == LOW)
    {
        if (mp3->isRunning())
            mp3->stop();
            file->open(left_h, sizeof(left_h));
            mp3->begin(file, out);
        }

    if (mp3->isRunning())
    {
       if (!mp3->loop()) mp3->stop();
    }
}