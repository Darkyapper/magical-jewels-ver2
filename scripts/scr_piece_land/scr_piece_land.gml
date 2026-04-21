function scr_piece_land() {
	
    var grid_ref  = obj_grid;
    var game_ref  = obj_game;

    // --- VERIFICAR GAME OVER ---
    // Si la fila 0 o 1 tienen gemas donde intenta caer la pieza, es game over
    for (var i = 0; i < 3; i++) {
        var r = grid_row + i;
        var c = grid_col;
        if (r >= 0 && r < GRID_ROWS) {
            if (grid_ref.grid[c + r * GRID_COLS] != GEM_EMPTY) {
                game_ref.game_state = "game_over";
                return;  // salir sin generar nueva pieza
            }
        }
    }
    
    // Escribir las 3 gemas en el array del tablero
    for (var i = 0; i < 3; i++) {
        var r = grid_row + i;
        var c = grid_col;
        if (r >= 0 && r < GRID_ROWS) {
            grid_ref.grid[c + r * GRID_COLS] = gem[i];
        }
    }
    
    // ← NUEVO: resolver matches antes de generar la siguiente pieza
    scr_resolve_board();
	// Contar pieza colocada y verificar nivel
	var game_ref = obj_game;
	game_ref.pieces_placed++;

	if (game_ref.level < MAX_LEVEL) {
	    if (game_ref.pieces_placed >= game_ref.level * game_ref.pieces_per_level) {
	        game_ref.level++;
	    }
	}
    
    // Nueva pieza
    grid_col = 2;
    grid_row = 0;
    gem[0] = irandom_range(1, GEM_TYPES);
    gem[1] = irandom_range(1, GEM_TYPES);
    gem[2] = irandom_range(1, GEM_TYPES);
    fall_timer = 0;
}