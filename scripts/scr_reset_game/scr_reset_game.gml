function scr_reset_game() {
    var game_ref = obj_game;
    var grid_ref = obj_grid;

    // Guardar high score antes de resetear
    game_ref.high_score = max(game_ref.high_score, game_ref.scored);
	scr_save_high_score();

    // Resetear stats
    game_ref.scored          = 0;
    game_ref.level          = 1;
    game_ref.pieces_placed  = 0;
    game_ref.game_state     = "playing";

    // Limpiar el tablero
    grid_ref.grid = array_create(GRID_COLS * GRID_ROWS, GEM_EMPTY);

    // Resetear la pieza activa
    with (obj_piece) {
        grid_col  = 2;
        grid_row  = 0;
        gem[0]    = irandom_range(1, GEM_TYPES);
        gem[1]    = irandom_range(1, GEM_TYPES);
        gem[2]    = irandom_range(1, GEM_TYPES);
        fall_timer = 0;
    }
}