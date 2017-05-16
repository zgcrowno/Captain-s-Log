draw_text(global.hud.commandsRightBound - string_width(global.util.thrustersString), 
          global.hud.commandsUpperBound, 
          global.util.thrustersString);
draw_text(global.hud.commandsRightBound - string_width(global.util.shieldsString), 
          global.hud.commandsUpperBound + string_height(global.util.commandsString), 
          global.util.shieldsString);
draw_text(global.hud.commandsRightBound - string_width(global.util.actionMapTargetString), 
          global.hud.commandsUpperBound + 2 * string_height(global.util.commandsString), 
          global.util.actionMapTargetString);
draw_text(global.hud.commandsRightBound - string_width(global.util.actionMapGunsString), 
          global.hud.commandsUpperBound + 3 * string_height(global.util.commandsString), 
          global.util.actionMapGunsString);
draw_text(global.hud.commandsRightBound - string_width(global.util.actionMapCannonString), 
          global.hud.commandsUpperBound + 4 * string_height(global.util.commandsString), 
          global.util.actionMapCannonString);
draw_text(global.hud.commandsRightBound - string_width(global.util.actionMapPassiveString), 
          global.hud.commandsUpperBound + 5 * string_height(global.util.commandsString), 
          global.util.actionMapPassiveString);
draw_text(global.hud.commandsRightBound - string_width(global.util.allString), 
          global.hud.commandsUpperBound + 6 * string_height(global.util.commandsString), 
          global.util.allString);
