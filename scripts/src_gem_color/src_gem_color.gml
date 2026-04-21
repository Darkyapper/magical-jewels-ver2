function scr_gem_color(gem_type) {
    switch (gem_type) {
        case GEM_RED:    return c_red;
        case GEM_BLUE:   return c_blue;
        case GEM_GREEN:  return c_green;
        case GEM_YELLOW: return c_yellow;
        case GEM_PURPLE: return c_purple;
        case GEM_WHITE:  return c_white;
        default:         return c_black;
    }
}