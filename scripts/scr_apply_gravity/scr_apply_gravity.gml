function scr_apply_gravity() {
    var grid_ref = obj_grid;
    
    // Procesar columna por columna, de abajo hacia arriba
    for (var col = 0; col < GRID_COLS; col++) {
        for (var row = GRID_ROWS - 1; row >= 0; row--) {
            
            if (grid_ref.grid[col + row * GRID_COLS] == GEM_EMPTY) {
                // Buscar la gema más cercana arriba
                for (var above = row - 1; above >= 0; above--) {
                    var gem_above = grid_ref.grid[col + above * GRID_COLS];
                    if (gem_above != GEM_EMPTY) {
                        // Bajarla a la posición vacía
                        grid_ref.grid[col + row * GRID_COLS] = gem_above;
                        grid_ref.grid[col + above * GRID_COLS] = GEM_EMPTY;
                        break;
                    }
                }
            }
        }
    }
}