if (input == "") {
    if (keyboard_check_pressed(ord("P"))) {
        input += "p";
    } else if (keyboard_check_pressed(ord("S"))) {
        input += "s";
    } else if (keyboard_check_pressed(ord("B"))) {
        input += "b";
    } else if (keyboard_check_pressed(ord("R"))) {
        input += "r";
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
} else if (input == "ste") {
    if (keyboard_check_pressed(ord("R"))) {
        input += "r";
    }
} else if (input == "ster") {
    if (keyboard_check_pressed(ord("N"))) {
        input += "n";
    }
} else if (input == "b") {
    if (keyboard_check_pressed(ord("O"))) {
        input += "o";
    }
} else if (input == "bo") {
    if (keyboard_check_pressed(ord("W"))) {
        input += "w";
    }
} else if (input == "r") {
    if (keyboard_check_pressed(ord("O"))) {
        input += "o";
    }
} else if (input == "ro") {
    if (keyboard_check_pressed(ord("T"))) {
        input += "t";
    }
} else if (input == "rot") {
    if (keyboard_check_pressed(ord("A"))) {
        input += "a";
    }
} else if (input == "rota") {
    if (keyboard_check_pressed(ord("T"))) {
        input += "t";
    }
} else if (input == "rotat") {
    if (keyboard_check_pressed(ord("E"))) {
        input += "e";
    }
}
