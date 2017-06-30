scrAcceptInput(noone);

if (keyboard_check_pressed(vk_enter)) {
    if (global.input != "") {
        scrThrustersStarboard(global.input);
    } else {
        scrLog(global.util.warnInputString);
    }
}
