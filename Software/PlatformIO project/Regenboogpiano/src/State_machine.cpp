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
    AUTOPLAY_leeg,
    AUTOPLAY_LED_ring,
    AUTOPLAY_MP3,
    AUTOPLAY_display,
    AUTOPLAY_check_laatste_noot,
    COLORS,
    COLORS_leer_de_kleuren,
    COLORS_GAME,
    ANIMALS,
    ANIMALS_raad_het_dier,
    ANIMALS_GAME,
    SIMONSAYS
};

main_states current_main_state = NO_POWER;
uint32_t current_time_since_POR__ms;
uint32_t start_timeout_no_interaction = 0;
uint32_t start_timeout_welkom = 0;
uint32_t start_timeout_game_start = 0;
uint8_t chosen_song = 0; // data type must to able to store MAXIMUM_NUMBER_OF_SONGS
uint8_t total_number_of_songs = 0; // data type must to able to store MAXIMUM_NUMBER_OF_SONGS // TODO Fill this value during firmware/song update
char* song_name[MAXIMUM_NUMBER_OF_SONGS]; // TODO Fill this array during firmware/song update
uint8_t note_in_song[MAXIMUM_NUMBER_OF_SONGS][MAXIMUM_NUMBER_OF_NOTES_PER_SONG]; // [song_index, note_index] values 0...25 for keys C5 to C7 TODO Fill this array during firmware/song update
uint8_t current_note_index_in_current_song = 0;
uint8_t number_of_notes_per_song[MAXIMUM_NUMBER_OF_SONGS]; // TODO Fill this array during firmware/song update

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
            start_LED_display_scroll("Welkom");
            start_MP3("welkom.mp3");
            start_timeout_welkom = current_time_since_POR__ms;
            current_main_state = welkom;
            break;
        case welkom:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_welkom + TIMEOUT_WELKOM__MS))
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
                if (busy_scrolling_text == false)
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
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_game_start + TIMEOUT_GAME_START__MS))
            {
                clear_LED_display();
                clear_LED_rings();
                current_main_state = PIANO_GAME;
            }
            break;
        case PIANO_GAME:
            if (index_of_touched_key =! -1)
            {
                start_MP3(piano_note_MP3_filename(index_of_touched_key));
                LED_display_center(note_name_without_octave[index_of_touched_key]);
            }
            if (button_rising_edge[BUTTON_MENU] == true)
            {
                current_main_state = AUTOPLAY;
            }
            break;
        case AUTOPLAY:
            log_this("Speel een lied");
            start_LED_display_scroll("Speel een lied");
            start_MP3("speel-een-lied.mp3");
            start_timeout_game_start = current_time_since_POR__ms;
            current_main_state = AUTOPLAY_speel_een_lied;
            break;
        case AUTOPLAY_speel_een_lied:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_game_start + TIMEOUT_GAME_START__MS))
            {
                log_this("Er wordt een willekeurig nummer gekozen");
                start_LED_display_scroll("Er wordt een willekeurig nummer gekozen");
                start_MP3("er-wordt-een-willekeurig-nummer-gekozen.mp3");
                start_timeout_game_start = current_time_since_POR__ms;
                current_main_state = AUTOPLAY_er_wordt_een_willekeurig_nummer_gekozen;
            }
            break;
        case AUTOPLAY_er_wordt_een_willekeurig_nummer_gekozen:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_game_start + TIMEOUT_GAME_START__MS))
            {
                chosen_song = uint16_t(random(total_number_of_songs));
                current_note_index_in_current_song = 0;
                log_this(song_name[chosen_song]);
                start_LED_display_scroll(song_name[chosen_song]);
                start_timeout_game_start = current_time_since_POR__ms;
                current_main_state = AUTOPLAY_titel_van_nummer;
            }
            break;
        case AUTOPLAY_titel_van_nummer:
            if ((busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_game_start + TIMEOUT_GAME_START__MS))
            {
                clear_LED_display();
                clear_LED_rings();
                current_main_state = AUTOPLAY_leeg;
            }
            break;
        case AUTOPLAY_leeg:
            show_correct_key_using_LED_ring(note_in_song[chosen_song][current_note_index_in_current_song]);
            start_timeout_no_interaction = current_time_since_POR__ms;
            current_main_state = AUTOPLAY_LED_ring;
            break;
        case AUTOPLAY_LED_ring:
            if (any_button_rising_edge == true)
            {
                start_MP3(piano_note_MP3_filename(note_in_song[chosen_song][current_note_index_in_current_song]));
                current_main_state = AUTOPLAY_MP3;
            }
            else if (current_time_since_POR__ms > start_timeout_no_interaction + TIMEOUT_NO_INTERACTION__MS)
            {
                current_main_state = STANDBY;
            }
            break;
        case AUTOPLAY_MP3:
            LED_display_center(note_name_without_octave[current_note_index_in_current_song]);
            current_main_state = AUTOPLAY_display;
            break;
        case AUTOPLAY_display:
            current_main_state = AUTOPLAY_check_laatste_noot;
            break;
        case AUTOPLAY_check_laatste_noot:
            if (current_note_index_in_current_song == number_of_notes_per_song[chosen_song])
            {
                current_main_state = AUTOPLAY_er_wordt_een_willekeurig_nummer_gekozen;
            }
            else
            {
                current_note_index_in_current_song = current_note_index_in_current_song + 1;
            }
            break;



        case COLORS:
            log_this("Leer de kleuren");
            start_LED_display_scroll("Leer de kleuren");
            start_MP3("leer-de-kleuren.mp3");
            start_timeout_game_start = current_time_since_POR__ms;
            current_main_state = COLORS_leer_de_kleuren;
            break;
        case COLORS_leer_de_kleuren:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_game_start + TIMEOUT_GAME_START__MS))
            {
                clear_LED_display();
                clear_LED_rings();
                start_timeout_no_interaction = current_time_since_POR__ms;
                current_main_state = COLORS_GAME;
            }
            break;
        case COLORS_GAME:
            if (index_of_touched_key != -1)
            {
                LED_display_center(color_name[index_of_touched_key]);
                turn_on_LED_ring_in_own_color(index_of_touched_key);
                start_MP3(color_name_MP3_filename(index_of_touched_key));
                start_timeout_no_interaction = current_time_since_POR__ms;
            }
            else if (current_time_since_POR__ms > start_timeout_no_interaction + TIMEOUT_NO_INTERACTION__MS)
            {
                current_main_state = STANDBY;
            }
            break;
        case ANIMALS:
            log_this("Raad het dier");
            start_LED_display_scroll("Raad het dier");
            start_MP3("raad-het-dier.mp3");
            start_timeout_game_start = current_time_since_POR__ms;
            current_main_state = ANIMALS_raad_het_dier;
            break;
        case ANIMALS_raad_het_dier:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_game_start + TIMEOUT_GAME_START__MS))
            {
                clear_LED_display();
                clear_LED_rings();
                current_main_state = ANIMALS_GAME;
            }
            break;
        case ANIMALS_GAME:
            if (index_of_touched_key != -1)
            {
                LED_display_center(animal_name[index_of_touched_key]);
                turn_on_LED_ring_in_own_color(index_of_touched_key);
                start_MP3(animal_name_MP3_filename(index_of_touched_key));
                start_timeout_no_interaction = current_time_since_POR__ms;
            }
            else if (current_time_since_POR__ms > start_timeout_no_interaction + TIMEOUT_NO_INTERACTION__MS)
            {
                current_main_state = STANDBY;
            }
            break;
    }
}
