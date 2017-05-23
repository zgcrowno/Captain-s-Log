scrAcceptInput(noone);

if(keyboard_check_pressed(vk_enter)) {
    if (global.input != "") {
        scrThrustersPort(global.input);
    } else {
        //To Do: Error to user about improper input
    }
}
