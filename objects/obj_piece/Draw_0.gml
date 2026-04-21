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

// --- DIBUJAR PREVIEW ---
// Posición del panel de preview (a la derecha del tablero)
var preview_x = GRID_X + (GRID_COLS * CELL_SIZE) + 20;
var preview_y = GRID_Y + 40;

// Título
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(preview_x, preview_y - 20, "NEXT:");

// Las 3 gemas de la siguiente pieza
for (var i = 0; i < 3; i++) {
    var px = preview_x;
    var py = preview_y + (i * CELL_SIZE);
    
    // Fondo de celda
    draw_set_color(c_dkgray);
    draw_rectangle(px, py, px + CELL_SIZE - 1, py + CELL_SIZE - 1, false);
    
    // Gema
    draw_set_color(scr_gem_color(next_gem[i]));
    draw_rectangle(
        px + 4,
        py + 4,
        px + CELL_SIZE - 5,
        py + CELL_SIZE - 5,
        false
    );
}