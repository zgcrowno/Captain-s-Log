if (keyboard_check_pressed(vk_numpad0) || keyboard_check_pressed(48)) {
    input += "0";
} else if (keyboard_check_pressed(vk_numpad1) || keyboard_check_pressed(49)) {
    input += "1";
} else if (keyboard_check_pressed(vk_numpad2) || keyboard_check_pressed(50)) {
    input += "2";
} else if (keyboard_check_pressed(vk_numpad3) || keyboard_check_pressed(51)) {
    input += "3";
} else if (keyboard_check_pressed(vk_numpad4) || keyboard_check_pressed(52)) {
    input += "4";
} else if (keyboard_check_pressed(vk_numpad5) || keyboard_check_pressed(53)) {
    input += "5";
} else if (keyboard_check_pressed(vk_numpad6) || keyboard_check_pressed(54)) {
    input += "6";
} else if (keyboard_check_pressed(vk_numpad7) || keyboard_check_pressed(55)) {
    input += "7";
} else if (keyboard_check_pressed(vk_numpad8) || keyboard_check_pressed(56)) {
    input += "8";
} else if (keyboard_check_pressed(vk_numpad9) || keyboard_check_pressed(57)) {
    input += "9";
} else if (keyboard_check_pressed(vk_enter)) {
    if (input != "") {
        scrThrustersPort(input);
    } else {
        //To Do: Error to user about improper input
    }
}
