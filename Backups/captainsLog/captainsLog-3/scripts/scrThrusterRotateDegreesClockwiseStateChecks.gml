scrAcceptInput(noone);

if (keyboard_check_pressed(vk_enter)) {
    if (global.input != "") {
        scrThrustersRotateClockwise(global.input);
    } else {
        scrLog(global.util.warnInputString);
    }
}
