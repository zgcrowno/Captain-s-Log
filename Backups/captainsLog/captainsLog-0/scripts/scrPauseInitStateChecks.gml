scrAcceptInput(global.util.quitString);
if(keyboard_check_pressed(vk_enter)) {
    if(global.input == global.util.quitString) {
        game_end();
    }
}
