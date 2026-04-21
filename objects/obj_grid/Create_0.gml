// Inicializar el array del tablero vacío
grid = array_create(GRID_COLS * GRID_ROWS, GEM_EMPTY);

// Función helper para leer una celda
// grid[col + row * GRID_COLS]