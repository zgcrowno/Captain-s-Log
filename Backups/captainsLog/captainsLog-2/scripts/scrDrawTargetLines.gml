if(player.currentState == player.targetState) {
    for(var i = 0; i < array_length_1d(util.enemies); i++) {
        draw_set_color(util.enemies[i].targetLineColor);
        draw_line(util.enemies[i].x + view_xport[1], 
                  util.enemies[i].y + view_yport[1], 
                  view_xport[1], 
                  hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2));
        draw_line(view_xport[1], 
                  hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2), 
                  hud.commandsRightBound, 
                  hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2));
        draw_set_color(c_white);
    }
}
