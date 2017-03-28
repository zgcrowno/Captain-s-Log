draw_text(hud.commandsRightBound - string_width("Thrusters"), 
          hud.commandsUpperBound, 
          "Thrusters");
draw_text(hud.commandsRightBound - string_width("Shields"), 
          hud.commandsUpperBound + string_height("Commands: "), 
          "Shields");
draw_text(hud.commandsRightBound - string_width(util.actionMapTargetString), 
          hud.commandsUpperBound + 2 * string_height("Commands: "), 
          util.actionMapTargetString);
draw_text(hud.commandsRightBound - string_width(util.actionMapGunsString), 
          hud.commandsUpperBound + 3 * string_height("Commands: "), 
          util.actionMapGunsString);
draw_text(hud.commandsRightBound - string_width(util.actionMapCannonString), 
          hud.commandsUpperBound + 4 * string_height("Commands: "), 
          util.actionMapCannonString);
draw_text(hud.commandsRightBound - string_width(util.actionMapActiveString), 
          hud.commandsUpperBound + 5 * string_height("Commands: "), 
          util.actionMapActiveString);
draw_text(hud.commandsRightBound - string_width(util.actionMapPassiveString), 
          hud.commandsUpperBound + 6 * string_height("Commands: "), 
          util.actionMapPassiveString);
draw_text(hud.commandsRightBound - string_width("All"), 
          hud.commandsUpperBound + 7 * string_height("Commands: "), 
          "All");
