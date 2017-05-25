var rooms = scrGetRoomNames();

//Start the loop at 1 so as to not pick up rmTestMainMenu
for(var i = 1; i < array_length_1d(rooms); i++) {
    var rm = rooms[i];
    draw_text(global.hud.commandsRightBound - string_width(rm), 
              global.hud.commandsUpperBound + ((i - 1) * string_height(global.util.heightString)), 
              rm);
}

draw_text(global.hud.commandsRightBound - string_width(global.util.quitString),
          global.hud.commandsUpperBound + ((array_length_1d(rooms) - 1) * string_height(global.util.heightString)),
          global.util.quitString);
