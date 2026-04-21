function scr_resolve_board() {
    var combo      = 0;
    var game_ref   = obj_game;
    var total_gems = 0;

    while (true) {
        var gems_this_round = scr_check_matches();  // ahora devuelve int
        if (gems_this_round == 0) break;

        combo++;
        total_gems += gems_this_round;

        // Sumar puntos con multiplicador de combo
        var points = scr_calculate_score(gems_this_round, combo);
        game_ref.scored += points;

        scr_apply_gravity();
    }

    // Actualizar high score si corresponde
    if (game_ref.scored > game_ref.high_score) {
        game_ref.high_score = game_ref.scored;
    }

    return combo;
}