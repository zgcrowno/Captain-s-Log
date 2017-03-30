if (input == "") {
    if (keyboard_check_pressed(ord("P"))) {
        input += "p";
    } else if (keyboard_check_pressed(ord("S"))) {
        input += "s";
    } else if (keyboard_check_pressed(ord("B"))) {
        input += "b";
    } else if (keyboard_check_pressed(ord("A"))) {
        input += "a";
    }
} else if (input == "p") {
    if (keyboard_check_pressed(ord("O"))) {
        input += "o";
    }
} else if (input == "po") {
    if (keyboard_check_pressed(ord("R"))) {
        input += "r";
    }
} else if (input == "por") {
    if (keyboard_check_pressed(ord("T"))) {
        input += "t";
    }
} else if (input == "port") {
    if (keyboard_check_pressed(vk_enter)) {
        scrCutShieldsPort();
    }
} else if (input == "s") {
    if (keyboard_check_pressed(ord("T"))) {
        input += "t";
    }
} else if (input == "st") {
    if (keyboard_check_pressed(ord("A"))) {
        input += "a";
    } else if (keyboard_check_pressed(ord("E"))) {
        input += "e";
    }
} else if (input == "sta") {
    if (keyboard_check_pressed(ord("R"))) {
        input += "r";
    }
} else if (input == "star") {
    if (keyboard_check_pressed(ord("B"))) {
        input += "b";
    }
} else if (input == "starb") {
    if (keyboard_check_pressed(ord("O"))) {
        input += "o";
    }
} else if (input == "starbo") {
    if (keyboard_check_pressed(ord("A"))) {
        input += "a";
    }
} else if (input == "starboa") {
    if (keyboard_check_pressed(ord("R"))) {
        input += "r";
    }
} else if (input == "starboar") {
    if (keyboard_check_pressed(ord("D"))) {
        input += "d";
    }
} else if (input == "starboard") {
    if (keyboard_check_pressed(vk_enter)) {
        scrCutShieldsStarboard();
    }
} else if (input == "b") {
    if (keyboard_check_pressed(ord("O"))) {
        input += "o";
    }
} else if (input == "bo") {
    if (keyboard_check_pressed(ord("W"))) {
        input += "w";
    }
} else if (input == "bow") {
    if (keyboard_check_pressed(vk_enter)) {
        scrCutShieldsBow();
    }
} else if (input == "ste") {
    if (keyboard_check_pressed(ord("R"))) {
        input += "r";
    }
} else if (input == "ster") {
    if (keyboard_check_pressed(ord("N"))) {
        input += "n";
    }
} else if (input == "stern") {
    if (keyboard_check_pressed(vk_enter)) {
        scrCutShieldsStern();
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
        scrCutShieldsAll();
    }
}
