if (input == "") {
    if (keyboard_check_pressed(ord("T"))) {
        input += "t";
    } else if (keyboard_check_pressed(ord("S"))) {
        input += "s";
    } else if (keyboard_check_pressed(ord("G"))) {
        input += "g";
    } else if (keyboard_check_pressed(ord("C"))) {
        input += "c";
    } else if (keyboard_check_pressed(ord("A"))) {
        input += "a";
    } else if (keyboard_check_pressed(ord("P"))) {
        input += "p";
    }
} else if (input == "t") {
    if (keyboard_check_pressed(ord("H"))) {
        input += "h";
    } else if (keyboard_check_pressed(ord("A"))) {
        input += "a";
    }
} else if (input == "th") {
    if (keyboard_check_pressed(ord("R"))) {
        input += "r";
    }
} else if (input == "thr") {
    if (keyboard_check_pressed(ord("U"))) {
        input += "u";
    }
} else if (input == "thru") {
    if (keyboard_check_pressed(ord("S"))) {
        input += "s";
    }
} else if (input == "thrus") {
    if (keyboard_check_pressed(ord("T"))) {
        input += "t";
    }
} else if (input == "thrust") {
    if (keyboard_check_pressed(ord("E"))) {
        input += "e";
    }
} else if (input == "thruste") {
    if (keyboard_check_pressed(ord("R"))) {
        input += "r";
    }
} else if (input == "thruster") {
    if (keyboard_check_pressed(ord("S"))) {
        input += "s";
    }
} else if (input == "ta") {
    if (keyboard_check_pressed(ord("R"))) {
        input += "r";
    }
} else if (input == "tar") {
    if (keyboard_check_pressed(ord("G"))) {
        input += "g";
    }
} else if (input == "targ") {
    if (keyboard_check_pressed(ord("E"))) {
        input += "e";
    }
} else if (input == "targe") {
    if (keyboard_check_pressed(ord("T"))) {
        input += "t";
    }
} else if (input == "s") {
    if (keyboard_check_pressed(ord("H"))) {
        input += "h";
    }
} else if (input == "sh") {
    if (keyboard_check_pressed(ord("I"))) {
        input += "i";
    }
} else if (input == "shi") {
    if (keyboard_check_pressed(ord("E"))) {
        input += "e";
    }
} else if (input == "shie") {
    if (keyboard_check_pressed(ord("L"))) {
        input += "l";
    }
} else if (input == "shiel") {
    if (keyboard_check_pressed(ord("D"))) {
        input += "d";
    }
} else if (input == "shield") {
    if (keyboard_check_pressed(ord("S"))) {
        input += "s";
    }
} else if (input == "g") {
    if (keyboard_check_pressed(ord("U"))) {
        input += "u";
    }
} else if (input == "gu") {
    if (keyboard_check_pressed(ord("N"))) {
        input += "n";
    }
} else if (input == "gun") {
    if (keyboard_check_pressed(ord("S"))) {
        input += "s";
    }
} else if (input == "c") {
    if (keyboard_check_pressed(ord("A"))) {
        input += "a";
    } else if (keyboard_check_pressed(ord("U"))) {
        input += "u";
    }
} else if (input == "ca") {
    if (keyboard_check_pressed(ord("N"))) {
        input += "n";
    }
} else if (input == "can") {
    if (keyboard_check_pressed(ord("N"))) {
        input += "n";
    }
} else if (input == "cann") {
    if (keyboard_check_pressed(ord("O"))) {
        input += "o";
    }
} else if (input == "canno") {
    if (keyboard_check_pressed(ord("N"))) {
        input += "n";
    }
} else if (input == "cu") {
    if (keyboard_check_pressed(ord("T"))) {
        input += "t";
    }
} else if (input == "a") {
    if (keyboard_check_pressed(ord("C"))) {
        input += "c";
    }
} else if (input == "ac") {
    if (keyboard_check_pressed(ord("T"))) {
        input += "t";
    }
} else if (input == "act") {
    if (keyboard_check_pressed(ord("I"))) {
        input += "i";
    }
} else if (input == "acti") {
    if (keyboard_check_pressed(ord("V"))) {
        input += "v";
    }
} else if (input == "activ") {
    if (keyboard_check_pressed(ord("E"))) {
        input += "e";
    }
} else if (input == "active") {
    if (keyboard_check_pressed(vk_enter)) {
        scrActiveDivertPower();
    }
} else if (input == "p") {
    if (keyboard_check_pressed(ord("A"))) {
        input += "a";
    }
} else if (input == "pa") {
    if (keyboard_check_pressed(ord("S"))) {
        input += "s";
    }
} else if (input == "pas") {
    if (keyboard_check_pressed(ord("S"))) {
        input += "s";
    }
} else if (input == "pass") {
    if (keyboard_check_pressed(ord("I"))) {
        input += "i";
    }
} else if (input == "passi") {
    if (keyboard_check_pressed(ord("V"))) {
        input += "v";
    }
} else if (input == "passiv") {
    if (keyboard_check_pressed(ord("E"))) {
        input += "e";
    }
} else if (input == "passive") {
    if (keyboard_check_pressed(vk_enter)) {
        scrPassiveDivertPower();
    }
}
