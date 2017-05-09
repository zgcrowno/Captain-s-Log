if(global.player.currentState == global.player.targetState) {
    for(i = 0; i < array_length_1d(global.util.enemies); i++) {
        draw_set_color(global.util.enemies[i].targetLineColor);
        draw_line(global.util.enemies[i].x + view_xport[1], 
                  global.util.enemies[i].y + view_yport[1], 
                  view_xport[1], 
                  global.hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2));
        draw_line(view_xport[1], 
                  global.hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2), 
                  global.hud.commandsRightBound, 
                  global.hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2));
        draw_set_color(c_white);
    }
}
