if (game_state == "game_over") {
    if (keyboard_check_pressed(vk_enter)) {
        scr_reset_game();
    }
}