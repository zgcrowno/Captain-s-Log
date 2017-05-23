scrAcceptInput(noone);

if (keyboard_check_pressed(vk_enter)) {
    if (global.input != "") {
        scrThrustersStarboard(global.input);
    } else {
        //To Do: Error to user about improper input
    }
}
