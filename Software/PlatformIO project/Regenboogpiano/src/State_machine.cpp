#include <Defines.h>
#include <State_machine.h>
#include <Debug.h>
#include <Audio.h>
#include <Touch.h>
#include <LEDs.h>
#include <RFID.h>
#include <Arduino.h>

enum main_states
{
    NO_POWER,
    de_regenboogpiano_wordt_gestart,
    gelieve_aan_te_melden,
    STANDBY,
    MENU,
    welkom,
    kies_een_spel_met_de_menu_toets,
    PIANO,
    PIANO_speel_piano,
    PIANO_GAME,
    AUTOPLAY,
    AUTOPLAY_speel_een_lied,
    AUTOPLAY_er_wordt_een_willekeurig_nummer_gekozen,
    AUTOPLAY_titel_van_nummer,
    AUTOPLAY_GAME,
    COLORS,
    COLORS_leer_de_kleuren,
    COLORS_GAME,
    ANIMALS,
    SIMONSAYS
};

main_states current_main_state = NO_POWER;
uint32_t current_time_since_POR__ms;
uint32_t start_timeout_no_interaction = 0;
uint32_t start_timeout_welkom = 0;
uint32_t start_timeout_game_start = 0;

void loop_state_machine()
{
    switch (current_main_state)
    {
        case NO_POWER:
            log_this("De regenboogpiano wordt gestart...");
            start_LED_display_scroll("De regenboogpiano wordt gestart...");
            start_MP3("de-regenboogpiano-wordt-gestart.mp3");
            current_main_state = de_regenboogpiano_wordt_gestart;
            break;
        case de_regenboogpiano_wordt_gestart:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false)) // assume it has played & scrolled
            {
                log_this("Gelieve aan te melden");
                LED_display_center("Gelieve aan te melden");
                start_MP3("gelieve-aan-te-melden.mp3");
                start_timeout_no_interaction = current_time_since_POR__ms;
                current_main_state = gelieve_aan_te_melden;
            }
            break;
        case gelieve_aan_te_melden:
            if (check_for_RFID() == true)
            {
                // TODO implement
                current_main_state = MENU;
            }
            else if (current_time_since_POR__ms > start_timeout_no_interaction + TIMEOUT_NO_INTERACTION__MS)
            {
                current_main_state = STANDBY;
            }
            break;
        case MENU:
            log_this("Welkom");
            LED_display_center("Welkom");
            start_MP3("welkom.mp3");
            start_timeout_welkom = current_time_since_POR__ms;
            current_main_state = welkom;
            break;
        case welkom:
            if ((busy_playing_MP3 == false) && (current_time_since_POR__ms > start_timeout_welkom + TIMEOUT_WELKOM__MS))
            {
                log_this("Kies een spel met de menu-toets");
                start_LED_display_scroll("Kies een spel met de menu-toets");
                start_MP3("kies-een-spel-met-de-menu-toets.mp3");
                current_main_state = kies_een_spel_met_de_menu_toets;
            }
            break;
        case kies_een_spel_met_de_menu_toets:
            if (busy_playing_MP3 == true)
            {
                // Do nothing: wait for MP3 to finish
            }
            else
            {
                if (busy_scrolling_text == true)
                {
                    // Restart scrolling same text
                    start_LED_display_scroll("Kies een spel met de toets");
                }
                if (button_rising_edge[BUTTON_MENU] == true)
                {
                    current_main_state = PIANO;
                }
            }
            break;
        case PIANO:
            log_this("Speel piano");
            start_LED_display_scroll("Speel piano");
            start_MP3("speel-piano.mp3");
            start_timeout_game_start = current_time_since_POR__ms;
            current_main_state = PIANO_speel_piano;
            break;
        case PIANO_speel_piano:
            if ((busy_playing_MP3 == false) && (current_time_since_POR__ms > start_timeout_welkom + TIMEOUT_GAME_START__MS))
            {
                clear_LED_display();
                clear_LED_rings();
                current_main_state = PIANO_GAME;
            }
            break;
        case PIANO_GAME:
            for (uint8_t i = 0; i < NUMBER_OF_NOTES; i++)
            {
                if (button_rising_edge[i] == true)
                {
                    start_MP3(piano_note_MP3_filename[i]);
                }
            }
    }
}