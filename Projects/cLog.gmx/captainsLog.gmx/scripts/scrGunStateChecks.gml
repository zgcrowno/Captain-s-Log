if (input == "") {
    if (keyboard_check_pressed(ord("F"))) {
        input += "f";
    }
} else if (input == "f") {
    if (keyboard_check_pressed(ord("I"))) {
        input += "i";
    }
} else if (input == "fi") {
    if (keyboard_check_pressed(ord("R"))) {
        input += "r";
    }
} else if (input == "fir") {
    if (keyboard_check_pressed(ord("E"))) {
        input += "e";
    }
} else if (input == "fire") {
    if (keyboard_check_pressed(vk_enter)) {
        scrGunsDivertPower();
    }
}
