for(var i = 0; i < array_length_1d(global.util.enemies); i++) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.enemies[i].designation), 
              global.hud.commandsUpperBound + (i * string_height(global.util.commandsString)), 
              global.util.enemies[i].designation);
}
