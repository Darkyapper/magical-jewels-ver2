// Tamaño del tablero
#macro GRID_COLS 6
#macro GRID_ROWS 13
#macro CELL_SIZE 40    // píxeles por casilla (ajústalo luego)

// Posición donde se dibuja el tablero en pantalla
#macro GRID_X 80       // margen izquierdo
#macro GRID_Y 20       // margen superior

// Colores de gemas (valores del 1 al N)
#macro GEM_EMPTY  0
#macro GEM_RED    1
#macro GEM_BLUE   2
#macro GEM_GREEN  3
#macro GEM_YELLOW 4
#macro GEM_PURPLE 5
#macro GEM_WHITE  6

#macro GEM_TYPES  6
#macro MATCH_MIN 3

#macro MAX_LEVEL     15
#macro SPEED_START   45   // steps entre caídas en nivel 1 (~1.5s a 30fps)
#macro SPEED_MIN     4