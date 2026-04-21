function scr_piece_can_move(col, row) {
    // La pieza ocupa 3 filas (row, row+1, row+2)
    // Verificar las 3 posiciones
    for (var i = 0; i < 3; i++) {
        var check_row = row + i;
        var check_col = col;
        
        // ¿Fuera del tablero?
        if (check_col < 0 || check_col >= GRID_COLS) return false;
        if (check_row >= GRID_ROWS) return false;
        
        // ¿Hay una gema ahí?
        if (check_row >= 0) {  // no chequear filas negativas (arriba del tablero)
            var grid_ref = obj_grid;  // referencia al grid
            if (grid_ref.grid[check_col + check_row * GRID_COLS] != GEM_EMPTY) {
                return false;
            }
        }
    }
    return true;
}