// TODO: create functions for state preparations that occur more than once (to be single source)

#include <State_machine.h>
#include <Debug.h>
#include <Audio.h>
#include <Touch.h>
#include <LEDs.h>
#include <RFID.h>
#include <Songs.h>
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
    SIMONSAYS,
    SIMONSAYS_speel_het_na,
    SIMONSAYS_er_wordt_een_willekeurig_nummer_gekozen,
    SIMONSAYS_3,
    SIMONSAYS_2,
    SIMONSAYS_1,
    SIMONSAYS_GAME_luister_goed,
    SIMONSAYS_GAME_play_example,
    SIMONSAYS_GAME_speel_het_na,
    SIMONSAYS_GAME_wacht_op_toets,
    SIMONSAYS_GAME_afgelopen,
    SIMONSAYS_een_nieuw_spel_wordt_gestart
};

main_states current_main_state = NO_POWER;
uint32_t current_time_since_POR__ms;
uint32_t start_timeout_no_interaction = 0;
uint32_t start_timeout_welkom = 0;
uint32_t start_timeout_game_start = 0;
uint32_t start_timeout_count_down = 0;
uint32_t start_timeout_win_lose = 0;
uint8_t chosen_song = 0; // data type must to able to store MAXIMUM_NUMBER_OF_SONGS // used in AUTOPLAY and SIMONSAYS
uint8_t SIMONSAYS_number_of_notes_to_guess_this_round; // data type must to able to store MAXIMUM_NUMBER_OF_NOTES_PER_SONG
uint8_t current_note_index_in_current_song = 0; // used in AUTOPLAY and SIMONSAYS
extern uint8_t total_number_of_songs; // data type must to able to store MAXIMUM_NUMBER_OF_SONGS // TODO Fill this value during firmware/song update
extern char* song_name[MAXIMUM_NUMBER_OF_SONGS]; // TODO Fill this array during firmware/song update
extern uint8_t note_in_song[MAXIMUM_NUMBER_OF_SONGS][MAXIMUM_NUMBER_OF_NOTES_PER_SONG]; // [song_index, note_index] values 0...24 for keys C5 to C7 // TODO Fill this array during firmware/song update
extern uint8_t number_of_notes_per_song[MAXIMUM_NUMBER_OF_SONGS]; // TODO Fill this array during firmware/song update

void loop_state_machine()
{
    switch (current_main_state)
    {
        case STANDBY:
            clear_LED_display();
            clear_LED_rings();
            // TODO: show something during standby?
            break;
        case NO_POWER:
            log_this("De regenboogpiano wordt gestart...");
            start_LED_display_scroll("De regenboogpiano wordt gestart...");
            start_MP3("/spk/drwg.mp3");
            show_startup_on_LED_rings();
            current_main_state = de_regenboogpiano_wordt_gestart;
            break;
        case de_regenboogpiano_wordt_gestart:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false)) // assume it has played & scrolled
            {
                log_this("Gelieve aan te melden");
                LED_display_center("Gelieve aan te melden");
                start_MP3("/spk/gatm.mp3");
                start_timeout_no_interaction = current_time_since_POR__ms;
                current_main_state = gelieve_aan_te_melden;
            }
            break;
        case gelieve_aan_te_melden:
            if (busy_playing_MP3 == false)
            {
                if (check_for_RFID() == true) // TODO test only, enable for production
                {
                    current_main_state = MENU;
                }
                else if (current_time_since_POR__ms > start_timeout_no_interaction + TIMEOUT_NO_INTERACTION__MS)
                {
                    current_main_state = STANDBY;
                }
            }
            break;
        case MENU:
            log_this("Welkom");
            start_LED_display_scroll("Welkom");
            start_MP3("/spk/welkom.mp3");
            start_timeout_welkom = current_time_since_POR__ms;
            current_main_state = welkom;
            break;
        case welkom:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_welkom + TIMEOUT_WELKOM__MS))
            {
                log_this("Kies een spel met de menu-toets");
                start_LED_display_scroll("Kies een spel met de menu-toets");
                start_MP3("/spk/kesmdmt.mp3");
                current_main_state = kies_een_spel_met_de_menu_toets;
            }
            break;
        case kies_een_spel_met_de_menu_toets:
            if (busy_playing_MP3 == false)
            {
                if (busy_scrolling_text == false)
                {
                    // Restart scrolling same text
                    // start_LED_display_scroll("Kies een spel met de menu-toets"); // TODO test only, enable for production
                }
                if (button_rising_edge[BUTTON_MENU] == true) // TODO test only, enable for production
                {
                    current_main_state = PIANO;
                }
            }
            break;
        case PIANO:
            log_this("Speel piano");
            start_LED_display_scroll("Speel piano");
            start_MP3("/spk/sp.mp3");
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
            if (index_of_touched_key != -1)
            {
                start_MP3(piano_note_MP3_filename(index_of_touched_key));
                LED_display_center(note_name_for_display[index_of_touched_key]);
            }
            if (button_rising_edge[BUTTON_MENU] == true)
            {
                // current_main_state = AUTOPLAY;
                current_main_state = COLORS; // TODO test only
            }
            break;



        case AUTOPLAY:
            log_this("Speel een lied");
            start_LED_display_scroll("Speel een lied");
            start_MP3("/spk/sel.mp3");
            start_timeout_game_start = current_time_since_POR__ms;
            current_main_state = AUTOPLAY_speel_een_lied;
            break;
        case AUTOPLAY_speel_een_lied:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_game_start + TIMEOUT_GAME_START__MS))
            {
                log_this("Er wordt een willekeurig nummer gekozen");
                start_LED_display_scroll("Er wordt een willekeurig nummer gekozen");
                start_MP3("/spk/ewewng.mp3");
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
            if (button_rising_edge[BUTTON_MENU] == true)
            {
                clear_LED_display();
                clear_LED_rings();
                current_main_state = COLORS;
            }
            else if (any_key_rising_edge == true)
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
            LED_display_center(note_name_for_display[current_note_index_in_current_song]);
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
            start_MP3("/spk/ldk.mp3");
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
            if (button_rising_edge[BUTTON_MENU] == true)
            {
                clear_LED_display();
                clear_LED_rings();
                current_main_state = ANIMALS;
            }
            else if (any_key_rising_edge == true)
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
            start_MP3("/spk/rhd.mp3");
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
            if (button_rising_edge[BUTTON_MENU] == true)
            {
                clear_LED_display();
                clear_LED_rings();
                current_main_state = SIMONSAYS;
            }
            else if (any_key_rising_edge == true)
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



        case SIMONSAYS:
            log_this("Speel het na");
            start_LED_display_scroll("Speel het na");
            start_MP3("/spk/shn.mp3");
            start_timeout_game_start = current_time_since_POR__ms;
            current_main_state = SIMONSAYS_speel_het_na;
            break;
        case SIMONSAYS_speel_het_na:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_game_start + TIMEOUT_GAME_START__MS))
            {
                log_this("Er wordt een willekeurig nummer gekozen");
                start_LED_display_scroll("Er wordt een willekeurig nummer gekozen");
                start_MP3("/spk/ewewng.mp3");
                start_timeout_game_start = current_time_since_POR__ms;
                current_main_state = SIMONSAYS_er_wordt_een_willekeurig_nummer_gekozen;
            }
            break;
        case SIMONSAYS_er_wordt_een_willekeurig_nummer_gekozen:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_game_start + TIMEOUT_GAME_START__MS))
            {
                log_this("3");
                LED_display_center("3");
                start_MP3("/spk/03.mp3");
                start_timeout_count_down = current_time_since_POR__ms;
                current_main_state = SIMONSAYS_3;
            }
            break;
        case SIMONSAYS_3:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_count_down + TIMEOUT_COUNT_DOWN__MS))
            {
                log_this("2");
                LED_display_center("2");
                start_MP3("/spk/02.mp3");
                start_timeout_count_down = current_time_since_POR__ms;
                current_main_state = SIMONSAYS_2;
            }
            break;
        case SIMONSAYS_2:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_count_down + TIMEOUT_COUNT_DOWN__MS))
            {
                log_this("1");
                LED_display_center("1");
                start_MP3("/spk/01.mp3");
                start_timeout_count_down = current_time_since_POR__ms;
                current_main_state = SIMONSAYS_1;
            }
            break;
        case SIMONSAYS_1:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false) && (current_time_since_POR__ms > start_timeout_count_down + TIMEOUT_COUNT_DOWN__MS))
            {
                log_this("Luister goed");
                LED_display_center("Luister goed");
                start_MP3("/spk/lg.mp3");
                start_timeout_count_down = current_time_since_POR__ms;
                SIMONSAYS_number_of_notes_to_guess_this_round = 3;
                current_main_state = SIMONSAYS_GAME_luister_goed;
            }
            break;
        case SIMONSAYS_GAME_luister_goed:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false))
            {
                current_note_index_in_current_song = 0;
                chosen_song = uint16_t(random(total_number_of_songs));
                current_main_state = SIMONSAYS_GAME_play_example;
            }
            break;
        case SIMONSAYS_GAME_play_example:
            if (busy_playing_MP3 == false)
            {
                start_MP3(piano_note_MP3_filename(note_in_song[chosen_song][current_note_index_in_current_song]));
                show_correct_key_using_LED_ring(note_in_song[chosen_song][current_note_index_in_current_song]);
                if (current_note_index_in_current_song < SIMONSAYS_number_of_notes_to_guess_this_round)
                {
                    current_note_index_in_current_song = current_note_index_in_current_song + 1;
                }
                else
                {
                    current_main_state = SIMONSAYS_GAME_speel_het_na;
                }
            }
            break;
        case SIMONSAYS_GAME_speel_het_na:
            if (busy_playing_MP3 == false)
            {
                log_this("Speel het na");
                LED_display_center("Speel het na");
                start_MP3("/spk/shn.mp3");
                current_note_index_in_current_song = 0;
                start_timeout_no_interaction = current_time_since_POR__ms;
                current_main_state = SIMONSAYS_GAME_wacht_op_toets;
            }
            break;
        case SIMONSAYS_GAME_wacht_op_toets:
            if (button_rising_edge[BUTTON_MENU] == true)
            {
                clear_LED_display();
                clear_LED_rings();
                current_main_state = PIANO;
            }
            else if (any_key_rising_edge == true)
            {
                if (note_in_song[chosen_song][current_note_index_in_current_song] == index_of_touched_key) // this note is correct
                {
                    turn_on_LED_ring_in_own_color(index_of_touched_key);
                    start_MP3(piano_note_MP3_filename(index_of_touched_key));
                    start_timeout_no_interaction = current_time_since_POR__ms;
                    if (current_note_index_in_current_song >= number_of_notes_per_song[chosen_song] - 1)
                    {
                        log_this("Proficiat! Je hebt gewonnen");
                        start_LED_display_scroll("Proficiat! Je hebt gewonnen");
                        start_MP3("/spk/win.mp3");
                        start_timeout_win_lose = current_time_since_POR__ms;
                        LED_rings_show_win = true;
                        current_main_state = SIMONSAYS_GAME_afgelopen;
                    }
                    else if (current_note_index_in_current_song >= SIMONSAYS_number_of_notes_to_guess_this_round - 1)
                    {
                        // all correct in this round
                        log_this("Luister goed");
                        LED_display_center("Luister goed");
                        start_MP3("/spk/lg.mp3");
                        start_timeout_count_down = current_time_since_POR__ms;
                        SIMONSAYS_number_of_notes_to_guess_this_round = SIMONSAYS_number_of_notes_to_guess_this_round + 1;
                        current_main_state = SIMONSAYS_GAME_luister_goed;
                    }
                    else
                    {
                        current_note_index_in_current_song = current_note_index_in_current_song + 1;
                    }
                }
                else // this note is incorrect
                {
                    log_this("Helaas! Je hebt verloren");
                    start_LED_display_scroll("Helaas! Je hebt verloren");
                    start_MP3("/spk/gameover.mp3");
                    start_timeout_win_lose = current_time_since_POR__ms;
                    LED_rings_show_lose = true;
                    current_main_state = SIMONSAYS_GAME_afgelopen;
                }
            }
            else if (current_time_since_POR__ms > start_timeout_no_interaction + TIMEOUT_NO_INTERACTION__MS)
            {
                current_main_state = STANDBY;
            }
            break;
        case SIMONSAYS_GAME_afgelopen:
            if (current_time_since_POR__ms > start_timeout_win_lose + TIMEOUT_WIN_LOSE__MS)
            {
                LED_rings_show_win = false;
                LED_rings_show_lose = false;
                clear_LED_rings();
                log_this("Een nieuw spel wordt gestart");
                start_LED_display_scroll("Een nieuw spel wordt gestart");
                start_MP3("/spk/een-nieuw-spel-wordt-gestart.mp3");
                current_main_state = SIMONSAYS_een_nieuw_spel_wordt_gestart;
            }
            break;
        case SIMONSAYS_een_nieuw_spel_wordt_gestart:
            if ((busy_playing_MP3 == false) && (busy_scrolling_text == false))
            {
                log_this("Er wordt een willekeurig nummer gekozen");
                start_LED_display_scroll("Er wordt een willekeurig nummer gekozen");
                start_MP3("/spk/ewewng.mp3");
                start_timeout_game_start = current_time_since_POR__ms;
                current_main_state = SIMONSAYS_er_wordt_een_willekeurig_nummer_gekozen;
            }
            break;
    }
}
