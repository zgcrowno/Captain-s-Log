draw_text(global.hud.commandsRightBound - string_width("Thrusters"), 
          global.hud.commandsUpperBound, 
          "Thrusters");
draw_text(global.hud.commandsRightBound - string_width("Shields"), 
          global.hud.commandsUpperBound + string_height("Commands: "), 
          "Shields");
draw_text(global.hud.commandsRightBound - string_width(global.util.actionMapTargetString), 
          global.hud.commandsUpperBound + 2 * string_height("Commands: "), 
          global.util.actionMapTargetString);
draw_text(global.hud.commandsRightBound - string_width(global.util.actionMapGunsString), 
          global.hud.commandsUpperBound + 3 * string_height("Commands: "), 
          global.util.actionMapGunsString);
draw_text(global.hud.commandsRightBound - string_width(global.util.actionMapCannonString), 
          global.hud.commandsUpperBound + 4 * string_height("Commands: "), 
          global.util.actionMapCannonString);
draw_text(global.hud.commandsRightBound - string_width(global.util.actionMapPassiveString), 
          global.hud.commandsUpperBound + 5 * string_height("Commands: "), 
          global.util.actionMapPassiveString);
draw_text(global.hud.commandsRightBound - string_width("All"), 
          global.hud.commandsUpperBound + 6 * string_height("Commands: "), 
          "All");
