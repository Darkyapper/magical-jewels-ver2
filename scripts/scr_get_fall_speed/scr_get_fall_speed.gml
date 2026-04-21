function scr_get_fall_speed(lvl) {
    // Interpola linealmente entre SPEED_START y SPEED_MIN según el nivel
    var t = (lvl - 1) / (MAX_LEVEL - 1);  // 0.0 en nivel 1, 1.0 en nivel 15
    return floor(lerp(SPEED_START, SPEED_MIN, t));
}