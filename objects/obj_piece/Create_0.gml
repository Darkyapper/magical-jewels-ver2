// Posición en el grid
grid_col = 2;
grid_row = 0;

// Pieza ACTIVA
gem[0] = irandom_range(1, GEM_TYPES);
gem[1] = irandom_range(1, GEM_TYPES);
gem[2] = irandom_range(1, GEM_TYPES);

// Pieza SIGUIENTE (preview)
next_gem[0] = irandom_range(1, GEM_TYPES);
next_gem[1] = irandom_range(1, GEM_TYPES);
next_gem[2] = irandom_range(1, GEM_TYPES);

// Timers y velocidad
fall_timer = 0;
fall_speed = SPEED_START;