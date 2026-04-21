function scr_check_matches() {
    var grid_ref = obj_grid;
    // Array para marcar qué celdas eliminar (0 = no, 1 = sí)
    var marked = array_create(GRID_COLS * GRID_ROWS, 0);
    var found = false;
    
    // Direcciones a escanear: [delta_col, delta_row]
    var dirs = [
        [1, 0],   // horizontal →
        [0, 1],   // vertical ↓
        [1, 1],   // diagonal ↘
        [1, -1],  // diagonal ↗
    ];
    
    for (var d = 0; d < 4; d++) {
        var dc = dirs[d][0];
        var dr = dirs[d][1];
        
        for (var row = 0; row < GRID_ROWS; row++) {
            for (var col = 0; col < GRID_COLS; col++) {
                
                var gem = grid_ref.grid[col + row * GRID_COLS];
                if (gem == GEM_EMPTY) continue;
                
                // Contar cuántas gemas iguales hay en esta dirección
                var count = 1;
                var nc = col + dc;
                var nr = row + dr;
                
                while (nc >= 0 && nc < GRID_COLS && nr >= 0 && nr < GRID_ROWS) {
                    if (grid_ref.grid[nc + nr * GRID_COLS] == gem) {
                        count++;
                        nc += dc;
                        nr += dr;
                    } else break;
                }
                
                // Si hay suficientes, marcar todas
                if (count >= MATCH_MIN) {
                    found = true;
                    for (var i = 0; i < count; i++) {
                        var mc = col + dc * i;
                        var mr = row + dr * i;
                        marked[mc + mr * GRID_COLS] = 1;
                    }
                }
            }
        }
    }
    
    // Eliminar las marcadas
    if (found) {
        for (var i = 0; i < GRID_COLS * GRID_ROWS; i++) {
            if (marked[i] == 1) {
                grid_ref.grid[i] = GEM_EMPTY;
            }
        }
    }
    
    return found;  // devuelve true si hubo al menos un match
}