function scr_save_high_score() {
    ini_open("magical_jewels.ini");
    ini_write_real("data", "high_score", obj_game.high_score);
    ini_close();
}