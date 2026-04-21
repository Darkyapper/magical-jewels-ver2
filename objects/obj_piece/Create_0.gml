// Posición en el grid (en celdas, no píxeles)
grid_col = 2;   // columna central (el tablero tiene 6, empieza en 0)
grid_row = 0;   // empieza arriba

// Las 3 gemas de la pieza (arriba, medio, abajo)
gem[0] = irandom_range(1, GEM_TYPES);
gem[1] = irandom_range(1, GEM_TYPES);
gem[2] = irandom_range(1, GEM_TYPES);

// Velocidad de caída
fall_timer = 0;
fall_speed = 30;  // steps entre cada caída (30 = ~1 segundo a 30fps)

// Flag de movimiento lateral
move_timer = 0;