draw_text(global.hud.commandsRightBound - string_width("Port"), 
          global.hud.commandsUpperBound, 
          "Port");
draw_text(global.hud.commandsRightBound - string_width("Starboard"), 
          global.hud.commandsUpperBound + string_height("Commands: "), 
          "Starboard");
draw_text(global.hud.commandsRightBound - string_width("Bow"), 
          global.hud.commandsUpperBound + 2 * string_height("Commands: "), 
          "Bow");
draw_text(global.hud.commandsRightBound - string_width("Stern"), 
          global.hud.commandsUpperBound + 3 * string_height("Commands: "), 
          "Stern");
draw_text(global.hud.commandsRightBound - string_width("Rotate"), 
          global.hud.commandsUpperBound + 4 * string_height("Commands: "), 
          "Rotate");
draw_text(global.hud.commandsRightBound - string_width("All"), 
          global.hud.commandsUpperBound + 5 * string_height("Commands: "), 
          "All");
