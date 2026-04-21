function scr_piece_land() {
    var grid_ref = obj_grid;
    
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
    
    // Nueva pieza
    grid_col = 2;
    grid_row = 0;
    gem[0] = irandom_range(1, GEM_TYPES);
    gem[1] = irandom_range(1, GEM_TYPES);
    gem[2] = irandom_range(1, GEM_TYPES);
    fall_timer = 0;
}