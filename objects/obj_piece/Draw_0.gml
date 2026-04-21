// Dibujar las 3 gemas de la pieza activa
for (var i = 0; i < 3; i++) {
    var xx = GRID_X + grid_col * CELL_SIZE;
    var yy = GRID_Y + (grid_row + i) * CELL_SIZE;  // i=0 arriba, i=2 abajo
    
    draw_set_color(scr_gem_color(gem[i]));
    draw_rectangle(
        xx + 4,
        yy + 4,
        xx + CELL_SIZE - 5,
        yy + CELL_SIZE - 5,
        false
    );
}