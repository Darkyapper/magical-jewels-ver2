// --- HUD durante el juego ---
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(-1);

draw_text(10, 10,  "SCORE: "  + string(scored));
draw_text(10, 30,  "BEST: "   + string(high_score));
draw_text(10, 50,  "LEVEL: "  + string(level));
draw_text(10, 70,  "PIECES: " + string(pieces_placed));

// --- PANTALLA DE GAME OVER ---
if (game_state == "game_over") {

    // Overlay semitransparente
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

    // Texto centrado
    draw_set_halign(fa_center);
    draw_set_color(c_red);
    draw_text(room_width / 2, room_height / 2 - 60, "GAME OVER");

    draw_set_color(c_white);
    draw_text(room_width / 2, room_height / 2 - 20, "SCORE: "  + string(scored));
    draw_text(room_width / 2, room_height / 2 + 10, "BEST: "   + string(high_score));
    draw_text(room_width / 2, room_height / 2 + 50, "Press ENTER to play again");

    draw_set_halign(fa_left);
}