if(global.player.currentState == global.player.targetState) {
    for(i = 0; i < array_length_1d(global.util.enemies); i++) {
        draw_set_color(global.util.enemies[i].targetLineColor);
        draw_line(global.util.enemies[i].x + view_xport[global.util.radarPort], 
                  global.util.enemies[i].y + view_yport[global.util.radarPort], 
                  view_xport[global.util.radarPort], 
                  global.hud.commandsUpperBound + (i * string_height(global.util.heightString)) + (string_height(global.util.heightString) / 2));
        draw_line(view_xport[global.util.radarPort], 
                  global.hud.commandsUpperBound + (i * string_height(global.util.heightString)) + (string_height(global.util.heightString) / 2), 
                  global.hud.commandsRightBound, 
                  global.hud.commandsUpperBound + (i * string_height(global.util.heightString)) + (string_height(global.util.heightString) / 2));
        draw_set_color(c_white);
    }
}
