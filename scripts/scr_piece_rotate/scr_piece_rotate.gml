function scr_piece_rotate() {
    // Rotar las gemas: la de abajo sube arriba
    // [0,1,2] → [2,0,1]
    var temp = gem[2];
    gem[2] = gem[1];
    gem[1] = gem[0];
    gem[0] = temp;
}