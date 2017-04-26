if (input == "") {
    if (keyboard_check_pressed(ord("C"))) {
        input += "c";
    } else if (keyboard_check_pressed(ord("A"))) {
        input += "a";
    }
} else if (input == "c") {
    if (keyboard_check_pressed(ord("L"))) {
        input += "l";
    } else if (keyboard_check_pressed(ord("O"))) {
        input += "o";
    }
} else if (input == "cl") {
    if (keyboard_check_pressed(ord("O"))) {
        input += "o";
    }
} else if (input == "clo") {
    if (keyboard_check_pressed(ord("C"))) {
        input += "c";
    }
} else if (input == "cloc") {
    if (keyboard_check_pressed(ord("K"))) {
        input += "k";
    }
} else if (input == "clock") {
    if (keyboard_check_pressed(vk_enter)) {
        scrCutThrustersRotateClockwise();
    }
} else if (input == "co") {
    if (keyboard_check_pressed(ord("U"))) {
        input += "u";
    }
} else if (input == "cou") {
    if (keyboard_check_pressed(ord("N"))) {
        input += "n";
    }
} else if (input == "coun") {
    if (keyboard_check_pressed(ord("T"))) {
        input += "t";
    }
} else if (input == "count") {
    if (keyboard_check_pressed(vk_enter)) {
        scrCutThrustersRotateCounterclockwise();
    }
} else if (input == "a") {
    if (keyboard_check_pressed(ord("L"))) {
        input += "l";
    }
} else if (input == "al") {
    if (keyboard_check_pressed(ord("L"))) {
        input += "l";
    }
} else if (input == "all") {
    if (keyboard_check_pressed(vk_enter)) {
        scrCutThrustersRotateAll();
    }
}
