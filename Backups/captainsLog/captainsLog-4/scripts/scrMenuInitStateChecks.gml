var rooms = scrGetRoomNames();

//Start the loop at 1 so as to not pick up rmTestMainMenu
for(var i = 1; i < array_length_1d(rooms); i++) {
    var rm = rooms[i];

    scrAcceptInput(rm);
    if(keyboard_check_pressed(vk_enter)) {
        for(j = 1; j < array_length_1d(rooms); j++) {
            if(global.input == rooms[j]) {
                room_goto(asset_get_index(rooms[j]));
            }
        }
    }
}

scrAcceptInput(global.util.quitString);
if(keyboard_check_pressed(vk_enter)) {
    if(global.input == global.util.quitString) {
        game_end();
    }
}
