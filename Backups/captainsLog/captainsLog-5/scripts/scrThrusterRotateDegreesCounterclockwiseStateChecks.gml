if (keyboard_check_pressed(vk_numpad0)) {
    input += "0";
} else if (keyboard_check_pressed(vk_numpad1)) {
    input += "1";
} else if (keyboard_check_pressed(vk_numpad2)) {
    input += "2";
} else if (keyboard_check_pressed(vk_numpad3)) {
    input += "3";
} else if (keyboard_check_pressed(vk_numpad4)) {
    input += "4";
} else if (keyboard_check_pressed(vk_numpad5)) {
    input += "5";
} else if (keyboard_check_pressed(vk_numpad6)) {
    input += "6";
} else if (keyboard_check_pressed(vk_numpad7)) {
    input += "7";
} else if (keyboard_check_pressed(vk_numpad8)) {
    input += "8";
} else if (keyboard_check_pressed(vk_numpad9)) {
    input += "9";
} else if (keyboard_check_pressed(vk_enter)) {
    if (input != "") {
        scrThrustersRotateCounterclockwise(input);
    } else {
        //To Do: Error to user about improper input
    }
}
