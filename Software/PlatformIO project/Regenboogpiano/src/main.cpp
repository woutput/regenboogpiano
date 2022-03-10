// TODO
// Use multicore?

#include <defines.h>
#include <Main.h>
#include <Debug.h>
#include <Wifi_stuff.h>
#include <Touch.h>
#include <Audio.h>
#include <LEDs.h>
#include <RFID.h>
#include <State_machine.h>

void setup()
{
    setup_debug();
    log_this("Begin of setup");
    setup_wifi();
    setup_touch();
    setup_audio();
    setup_LEDs();
    setup_RFID();
    setup_songs();
    log_this("End of setup");
}

void loop()
{
    current_time_since_POR__ms = millis();
    loop_debug();
    loop_wifi();
    loop_touch();
    loop_audio();
    loop_LEDs();
    loop_state_machine();
}
