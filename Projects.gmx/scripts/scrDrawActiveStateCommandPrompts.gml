if(player.object_index == objFlasher) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), 
              hud.commandsUpperBound, 
              "[\#]");
} else if(player.object_index == objMezzanine) {
    draw_text(hud.commandsRightBound - string_width("Port"), 
          hud.commandsUpperBound, 
          "Port");
    draw_text(hud.commandsRightBound - string_width("Starboard"), 
              hud.commandsUpperBound + string_height("Commands: "), 
              "Starboard");
    draw_text(hud.commandsRightBound - string_width("Bow"), 
              hud.commandsUpperBound + 2 * string_height("Commands: "), 
              "Bow");
    draw_text(hud.commandsRightBound - string_width("Stern"), 
              hud.commandsUpperBound + 3 * string_height("Commands: "), 
              "Stern");
}
