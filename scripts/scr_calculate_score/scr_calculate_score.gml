function scr_calculate_score(gems_cleared, combo) {
    // Puntos base por gema × nivel actual × multiplicador de combo
    var game_ref  = obj_game;
    var base      = 10;
    var combo_mul = 1 + (combo * 0.5);  // combo 1=x1, 2=x1.5, 3=x2, etc.
    
    return floor(base * gems_cleared * game_ref.level * combo_mul);
}