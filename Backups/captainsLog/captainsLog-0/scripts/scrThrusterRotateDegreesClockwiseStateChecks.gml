scrAcceptInput(noone);

if (keyboard_check_pressed(vk_enter)) {
    if (input != "") {
        scrThrustersRotateClockwise(input);
    } else {
        //To Do: Error to user about improper input
    }
}
