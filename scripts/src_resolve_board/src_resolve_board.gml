function scr_resolve_board() {
    var combo = 0;
    
    // Loop hasta que no haya más matches
    while (scr_check_matches()) {
        combo++;
        scr_apply_gravity();
        // Aquí más adelante sumaremos puntos por combo
    }
    
    return combo;  // devuelve cuántos combos encadenados hubo
}