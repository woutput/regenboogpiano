#pragma once

#define TIMEOUT_NO_INTERACTION__MS (15 * 60 * 1000)
#define TIMEOUT_WELKOM__MS     1000
#define TIMEOUT_GAME_START__MS 2000
#define TIMEOUT_COUNT_DOWN__MS 1000
#define TIMEOUT_WIN_LOSE__MS   5000

void loop_state_machine();
