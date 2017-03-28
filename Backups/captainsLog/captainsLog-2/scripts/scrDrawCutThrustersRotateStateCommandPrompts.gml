draw_text(hud.commandsRightBound - string_width("Clock"), 
          hud.commandsUpperBound, 
          "Clock");
draw_text(hud.commandsRightBound - string_width("Count"), 
          hud.commandsUpperBound + string_height("Commands: "), 
          "Count");
draw_text(hud.commandsRightBound - string_width("All"), 
          hud.commandsUpperBound + 2 * string_height("Commands: "), 
          "All");
