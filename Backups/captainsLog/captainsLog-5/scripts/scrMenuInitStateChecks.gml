var rooms = scrGetRoomNames();

//Start the loop at 1 so as to not pick up rmTestMainMenu
for(var i = 1; i < array_length_1d(rooms); i++) {
    var rm = rooms[i];
    show_debug_message(rm);
    scrAcceptInput(rm);
    if(keyboard_check_pressed(vk_enter)) {
        for(j = 1; j < array_length_1d(rooms); j++) {
            if(global.input == rooms[j]) {
                room_goto(asset_get_index(rooms[j]));
            }
        }
    }
}
