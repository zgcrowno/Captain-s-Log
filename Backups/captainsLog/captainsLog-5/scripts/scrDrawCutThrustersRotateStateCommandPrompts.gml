draw_text(global.hud.commandsRightBound - string_width(global.util.clockString), 
          global.hud.commandsUpperBound, 
          global.util.clockString);
draw_text(global.hud.commandsRightBound - string_width(global.util.countString), 
          global.hud.commandsUpperBound + string_height(global.util.commandsString), 
          global.util.countString);
draw_text(global.hud.commandsRightBound - string_width(global.util.allString), 
          global.hud.commandsUpperBound + 2 * string_height(global.util.commandsString), 
          global.util.allString);
