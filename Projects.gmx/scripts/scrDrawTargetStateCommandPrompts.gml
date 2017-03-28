for(i = 0; i < array_length_1d(util.enemies); i++) {
    draw_text(hud.commandsRightBound - string_width(util.enemies[i].designation), 
              hud.commandsUpperBound + (i * string_height("Commands: ")), 
              util.enemies[i].designation);
}
