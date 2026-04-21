// No procesar input ni física si el juego terminó
if (obj_game.game_state == "game_over") exit;

// --- CAÍDA AUTOMÁTICA ---
fall_timer++;
if (fall_timer >= fall_speed) {
    fall_timer = 0;
    
    // Intentar bajar una fila
    if (scr_piece_can_move(grid_col, grid_row + 1)) {
        grid_row++;
    } else {
        // Aterrizó — fijar al tablero
        scr_piece_land();
    }
}

// --- MOVIMIENTO LATERAL ---
if (keyboard_check_pressed(vk_left)) {
    if (scr_piece_can_move(grid_col - 1, grid_row)) {
        grid_col--;
    }
}
if (keyboard_check_pressed(vk_right)) {
    if (scr_piece_can_move(grid_col + 1, grid_row)) {
        grid_col++;
    }
}

// --- CAÍDA RÁPIDA (tecla abajo) ---
var base_speed = scr_get_fall_speed(obj_game.level);

if (keyboard_check(vk_down)) {
    fall_speed = SPEED_MIN;
} else {
    fall_speed = base_speed;
}

// --- ROTACIÓN ---
if (keyboard_check_pressed(vk_up)) {
    scr_piece_rotate();
}