draw_text(global.hud.commandsRightBound - string_width("Clock"), 
          global.hud.commandsUpperBound, 
          "Clock");
draw_text(global.hud.commandsRightBound - string_width("Count"), 
          global.hud.commandsUpperBound + string_height("Commands: "), 
          "Count");
draw_text(global.hud.commandsRightBound - string_width("All"), 
          global.hud.commandsUpperBound + 2 * string_height("Commands: "), 
          "All");
