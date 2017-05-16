if(global.player.object_index == objFlasher) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.player.object_index == objMezzanine) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.portString), 
          global.hud.commandsUpperBound, 
          global.util.portString);
    draw_text(global.hud.commandsRightBound - string_width(global.util.starboardString), 
              global.hud.commandsUpperBound + string_height(global.util.commandsString), 
              global.util.starboardString);
    draw_text(global.hud.commandsRightBound - string_width(global.util.bowString), 
              global.hud.commandsUpperBound + 2 * string_height(global.util.commandsString), 
              global.util.bowString);
    draw_text(global.hud.commandsRightBound - string_width(global.util.sternString), 
              global.hud.commandsUpperBound + 3 * string_height(global.util.commandsString), 
              global.util.sternString);
}
