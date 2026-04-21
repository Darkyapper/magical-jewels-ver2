scored      = 0;
high_score  = 0;
level       = 1;
pieces_placed = 0;

// Cada cuántas piezas sube el nivel
pieces_per_level = 10;

// Estado del juego
// "playing" | "game_over"
game_state = "playing";

// Cargar high score guardado
ini_open("magical_jewels.ini");
high_score = ini_read_real("data", "high_score", 0);
ini_close();