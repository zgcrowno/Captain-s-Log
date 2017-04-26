draw_self();
if(player.currentState == player.gunState) {
    draw_set_color(c_green);
    draw_set_font(fntMain);
    draw_text(x - sprite_width, y - (2 * sprite_height), designation);
}
