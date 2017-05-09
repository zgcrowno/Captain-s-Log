if(global.player.object_index == objFlasher) {
    draw_text(global.hud.commandsRightBound - string_width("[\#]"), 
              global.hud.commandsUpperBound, 
              "[\#]");
} else if(global.player.object_index == objMezzanine) {
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
}
