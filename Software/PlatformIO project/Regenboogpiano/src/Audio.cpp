#include <defines.h>
#include <Audio.h>
#include <Debug.h>
#include "SPIFFS.h"
#include "AudioFileSourceSPIFFS.h"
#include "AudioGeneratorMP3.h"
#include "AudioOutputI2S.h"

// TODO: test only
#include "left.h"
#include "right.h"

AudioGeneratorMP3 *mp3;
AudioFileSourceSPIFFS *file;
AudioOutputI2S *out;
bool busy_playing_MP3 = false;
char charp_buffer[20];

const char* const note_name_for_display[] =    {"C",
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
                                                "C'",
                                                "C'#",
                                                "D'",
                                                "D'#",
                                                "E'",
                                                "F'",
                                                "F'#",
                                                "G'",
                                                "G'#",
                                                "A'",
                                                "A'#",
                                                "B'",
                                                "C''"};

const char* const note_name_in_RTTTL[] =      { "C5",
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

// https://beenhakkers.nl/wat-zijn-boomwhackers/
// Rood (groot en klein) is de toon C of Do.
// Oranje is de toon D of Re.
// Geel is de toon E of Mi.
// Lichtgroen / Grasgroen is de toon F of Fa.
// Donkergroen is de toon G of Sol.
// Paars is de toon A of La.
// Roze is de toon B of Si,
// De vijf Chromatische aanvullings kleuren zijn

// De kleur Lichtrood is de toon C# of Db.
// De kleur Donker-oranje is de toon D# of Eb
// De kleur ‘Gewoon” groen / blad-groen is de toon F# of Gb
// De kleur Marine blauw is de toon G# of Ab
// De kleur Aubergine is de toon A# of Bb
const char* const color_name[NUMBER_OF_NOTES] = {"rood",
                                                 "rood",
                                                 "oranje",
                                                 "oranje",
                                                 "geel",
                                                 "groen",
                                                 "groen",
                                                 "groen",
                                                 "blauw",
                                                 "paars",
                                                 "paars",
                                                 "roze",
                                                 "rood",
                                                 "rood",
                                                 "oranje",
                                                 "oranje",
                                                 "geel",
                                                 "groen",
                                                 "groen",
                                                 "groen",
                                                 "blauw",
                                                 "paars",
                                                 "paars",
                                                 "roze",
                                                 "rood"};
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
                                                    "X", // TODO change to new names
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
    SPIFFS.begin();
    audioLogger = &Serial;
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

    if (mp3->isRunning())
    {
        if (!mp3->loop())
        {
            mp3->stop();
            log_this("MP3 is done playing");
            busy_playing_MP3 = false;
        }
    }
    // TODO implement
}

void start_MP3(const char * filename_of_MP3)
{
    busy_playing_MP3 = true;
    log_this("Starting MP3 file:");
    log_this(filename_of_MP3);

    // TODO fix this temporary thing:
    if (mp3->isRunning())
    {
        mp3->stop();
    }
    file = new AudioFileSourceSPIFFS(filename_of_MP3);
    mp3->begin(file, out);
    log_this("Started MP3");
}

char * piano_note_MP3_filename(int8_t note_number)
{
    strcpy(charp_buffer, "/pia/");
    strcat(charp_buffer, note_name_in_RTTTL[note_number]);
    strcat(charp_buffer, ".mp3");
    return charp_buffer;
}

char * color_name_MP3_filename(int8_t note_number)
{
    strcpy(charp_buffer, "/spk/");
    strcat(charp_buffer, color_name[note_number]);
    strcat(charp_buffer, ".mp3");
    return charp_buffer;
}

char * animal_name_MP3_filename(int8_t note_number)
{
    // TODO implement
}
