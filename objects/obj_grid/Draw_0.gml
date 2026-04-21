// Dibujar fondo del tablero
draw_set_color(c_dkgray);
draw_rectangle(
    GRID_X, 
    GRID_Y, 
    GRID_X + (GRID_COLS * CELL_SIZE), 
    GRID_Y + (GRID_ROWS * CELL_SIZE), 
    false
);

// Dibujar la grilla y las gemas
for (var row = 0; row < GRID_ROWS; row++) {
    for (var col = 0; col < GRID_COLS; col++) {
        
        var xx = GRID_X + col * CELL_SIZE;
        var yy = GRID_Y + row * CELL_SIZE;
        var gem = grid[col + row * GRID_COLS];
        
        // Dibujar celda vacía (borde)
        draw_set_color(c_gray);
        draw_rectangle(xx, yy, xx + CELL_SIZE - 1, yy + CELL_SIZE - 1, true);
        
        // Si hay una gema, dibujarla
        if (gem != GEM_EMPTY) {
            draw_set_color(scr_gem_color(gem));
            draw_rectangle(
                xx + 4, 
                yy + 4, 
                xx + CELL_SIZE - 5, 
                yy + CELL_SIZE - 5, 
                false
            );
        }
    }
}