if(keyboard_check_pressed(vk_tab)) {
    //In the future, it might be wise to configure the instance data states in such
    //a way that currentState will be decremented here.
    script_execute(scrWipeToInitState);
} else if(keyboard_check_pressed(vk_backspace)) {
    if(input != "") {
        input = string_delete(input, string_length(input), 1);
    }
} else if(currentState == initState) {  //initState checks
    if(input == "") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        } else if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        } else if(keyboard_check_pressed(ord("G"))) {
            input += "g";
        } else if(keyboard_check_pressed(ord("C"))) {
            input += "c";
        }
    } else if(input == "t") {
        if(keyboard_check_pressed(ord("H"))) {
            input += "h";
        }
    } else if(input == "th") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "thr") {
        if(keyboard_check_pressed(ord("U"))) {
            input += "u";
        }
    } else if(input == "thru") {
        if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        }
    } else if(input == "thrus") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "thrust") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "thruste") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "thruster") {
        if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        }
    } else if(input == "s") {
        if(keyboard_check_pressed(ord("H"))) {
            input += "h";
        }
    } else if(input == "sh") {
        if(keyboard_check_pressed(ord("I"))) {
            input += "i";
        }
    } else if(input == "shi") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "shie") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        }
    } else if(input == "shiel") {
        if(keyboard_check_pressed(ord("D"))) {
            input += "d";
        }
    } else if(input == "shield") {
        if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        }
    } else if(input == "g") {
        if(keyboard_check_pressed(ord("U"))) {
            input += "u";
        }
    } else if(input == "gu") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "gun") {
        if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        }
    } else if(input == "c") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        } else if(keyboard_check_pressed(ord("U"))) {
            input += "u";
        }
    } else if(input == "ca") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "can") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "cann") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "canno") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "cu") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    }
} else if(currentState == thrusterState) {  //thrusterState checks
    if(input == "") {
        if(keyboard_check_pressed(ord("P"))) {
            input += "p";
        } else if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        } else if(keyboard_check_pressed(ord("B"))) {
            input += "b";
        } else if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "p") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        } 
    } else if(input == "po") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        } 
    } else if(input == "por") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        } 
    } else if(input == "s") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "st") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        } else if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "sta") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "star") {
        if(keyboard_check_pressed(ord("B"))) {
            input += "b";
        }
    } else if(input == "starb") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "starbo") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        }
    } else if(input == "starboa") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "starboar") {
        if(keyboard_check_pressed(ord("D"))) {
            input += "d";
        }
    } else if(input == "ste") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "ster") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "b") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "bo") {
        if(keyboard_check_pressed(ord("W"))) {
            input += "w";
        }
    } else if(input == "r") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "ro") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "rot") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        }
    } else if(input == "rota") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "rotat") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    }
} else if(currentState == thrusterPortState) {  //thrusterPortState checks
    if(keyboard_check_pressed(vk_numpad0)) {
        input += "0";
    } else if(keyboard_check_pressed(vk_numpad1)) {
        input += "1";
    } else if(keyboard_check_pressed(vk_numpad2)) {
        input += "2";
    } else if(keyboard_check_pressed(vk_numpad3)) {
        input += "3";
    } else if(keyboard_check_pressed(vk_numpad4)) {
        input += "4";
    } else if(keyboard_check_pressed(vk_numpad5)) {
        input += "5";
    } else if(keyboard_check_pressed(vk_numpad6)) {
        input += "6";
    } else if(keyboard_check_pressed(vk_numpad7)) {
        input += "7";
    } else if(keyboard_check_pressed(vk_numpad8)) {
        input += "8";
    } else if(keyboard_check_pressed(vk_numpad9)) {
        input += "9";
    } else if(keyboard_check_pressed(vk_enter)) {
        script_execute(scrThrustersPort);
    } 
} else if(currentState == thrusterStarboardState) { //thrusterStarboardState checks
    if(keyboard_check_pressed(vk_numpad0)) {
        input += "0";
    } else if(keyboard_check_pressed(vk_numpad1)) {
        input += "1";
    } else if(keyboard_check_pressed(vk_numpad2)) {
        input += "2";
    } else if(keyboard_check_pressed(vk_numpad3)) {
        input += "3";
    } else if(keyboard_check_pressed(vk_numpad4)) {
        input += "4";
    } else if(keyboard_check_pressed(vk_numpad5)) {
        input += "5";
    } else if(keyboard_check_pressed(vk_numpad6)) {
        input += "6";
    } else if(keyboard_check_pressed(vk_numpad7)) {
        input += "7";
    } else if(keyboard_check_pressed(vk_numpad8)) {
        input += "8";
    } else if(keyboard_check_pressed(vk_numpad9)) {
        input += "9";
    } else if(keyboard_check_pressed(vk_enter)) {
        script_execute(scrThrustersStarboard)
    } 
} else if(currentState == thrusterBowState) {   //thrusterBowState checks
    if(keyboard_check_pressed(vk_numpad0)) {
        input += "0";
    } else if(keyboard_check_pressed(vk_numpad1)) {
        input += "1";
    } else if(keyboard_check_pressed(vk_numpad2)) {
        input += "2";
    } else if(keyboard_check_pressed(vk_numpad3)) {
        input += "3";
    } else if(keyboard_check_pressed(vk_numpad4)) {
        input += "4";
    } else if(keyboard_check_pressed(vk_numpad5)) {
        input += "5";
    } else if(keyboard_check_pressed(vk_numpad6)) {
        input += "6";
    } else if(keyboard_check_pressed(vk_numpad7)) {
        input += "7";
    } else if(keyboard_check_pressed(vk_numpad8)) {
        input += "8";
    } else if(keyboard_check_pressed(vk_numpad9)) {
        input += "9";
    } else if(keyboard_check_pressed(vk_enter)) {
        script_execute(scrThrustersBow);
    }  
} else if(currentState == thrusterSternState) { //thrusterSternState checks
    if(keyboard_check_pressed(vk_numpad0)) {
        input += "0";
    } else if(keyboard_check_pressed(vk_numpad1)) {
        input += "1";
    } else if(keyboard_check_pressed(vk_numpad2)) {
        input += "2";
    } else if(keyboard_check_pressed(vk_numpad3)) {
        input += "3";
    } else if(keyboard_check_pressed(vk_numpad4)) {
        input += "4";
    } else if(keyboard_check_pressed(vk_numpad5)) {
        input += "5";
    } else if(keyboard_check_pressed(vk_numpad6)) {
        input += "6";
    } else if(keyboard_check_pressed(vk_numpad7)) {
        input += "7";
    } else if(keyboard_check_pressed(vk_numpad8)) {
        input += "8";
    } else if(keyboard_check_pressed(vk_numpad9)) {
        input += "9";
    } else if(keyboard_check_pressed(vk_enter)) {
        script_execute(scrThrustersStern);
    } 
} else if(currentState == thrusterRotateState) {    //thrusterRotateState checks
    if(input == "") {
        if(keyboard_check_pressed(ord("C"))) {
            input += "c";
        }
    } else if(input == "c") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        } else if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "cl") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "clo") {
        if(keyboard_check_pressed(ord("C"))) {
            input += "c";
        }
    } else if(input == "cloc") {
        if(keyboard_check_pressed(ord("K"))) {
            input += "k";
        }
    } else if(input == "clock") {
        if(keyboard_check_pressed(ord("W"))) {
            input += "w";
        }
    } else if(input == "clockw") {
        if(keyboard_check_pressed(ord("I"))) {
            input += "i";
        }
    } else if(input == "clockwi") {
        if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        }
    } else if(input == "clockwis") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "co") {
        if(keyboard_check_pressed(ord("U"))) {
            input += "u";
        }
    } else if(input == "cou") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "coun") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "count") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "counte") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    }
} else if(currentState == thrusterRotateDegreesClockwiseState) {    //thrusterRotateDegreesClockwiseState checks
    if(keyboard_check_pressed(vk_numpad0)) {
        input += "0";
    } else if(keyboard_check_pressed(vk_numpad1)) {
        input += "1";
    } else if(keyboard_check_pressed(vk_numpad2)) {
        input += "2";
    } else if(keyboard_check_pressed(vk_numpad3)) {
        input += "3";
    } else if(keyboard_check_pressed(vk_numpad4)) {
        input += "4";
    } else if(keyboard_check_pressed(vk_numpad5)) {
        input += "5";
    } else if(keyboard_check_pressed(vk_numpad6)) {
        input += "6";
    } else if(keyboard_check_pressed(vk_numpad7)) {
        input += "7";
    } else if(keyboard_check_pressed(vk_numpad8)) {
        input += "8";
    } else if(keyboard_check_pressed(vk_numpad9)) {
        input += "9";
    } else if(keyboard_check_pressed(vk_enter)) {
        script_execute(scrThrustersRotateClockwise);
    }
} else if(currentState == thrusterRotateDegreesCounterclockwiseState) { //thrusterRotateDegreesCounterclockwiseState checks
    if(keyboard_check_pressed(vk_numpad0)) {
        input += "0";
    } else if(keyboard_check_pressed(vk_numpad1)) {
        input += "1";
    } else if(keyboard_check_pressed(vk_numpad2)) {
        input += "2";
    } else if(keyboard_check_pressed(vk_numpad3)) {
        input += "3";
    } else if(keyboard_check_pressed(vk_numpad4)) {
        input += "4";
    } else if(keyboard_check_pressed(vk_numpad5)) {
        input += "5";
    } else if(keyboard_check_pressed(vk_numpad6)) {
        input += "6";
    } else if(keyboard_check_pressed(vk_numpad7)) {
        input += "7";
    } else if(keyboard_check_pressed(vk_numpad8)) {
        input += "8";
    } else if(keyboard_check_pressed(vk_numpad9)) {
        input += "9";
    } else if(keyboard_check_pressed(vk_enter)) {
        script_execute(scrThrustersRotateCounterclockwise);
    }
} else if(currentState == shieldState) {    //shieldState checks
    //To do
    if(input == "") {
        if(keyboard_check_pressed(ord("P"))) {
            input += "p";
        } else if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        } else if(keyboard_check_pressed(ord("B"))) {
            input += "b";
        } else if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        }
    } else if(input == "p") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "po") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "por") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "port") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrShieldsPort);
        }
    } else if(input == "s") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "st") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        } else if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "sta") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r"
        }
    } else if(input == "star") {
        if(keyboard_check_pressed(ord("B"))) {
            input += "b"
        }
    } else if(input == "starb") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o"
        }
    } else if(input == "starbo") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a"
        }
    } else if(input == "starboa") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r"
        }
    } else if(input == "starboar") {
        if(keyboard_check_pressed(ord("D"))) {
            input += "d"
        }
    } else if(input == "starboard") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrShieldsStarboard);
        }
    } else if(input == "b") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o"
        }
    } else if(input == "bo") {
        if(keyboard_check_pressed(ord("W"))) {
            input += "w"
        }
    } else if(input == "bow") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrShieldsBow);
        }
    } else if(input == "ste") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r"
        }
    } else if(input == "ster") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n"
        }
    } else if(input == "stern") {
        if(keyboard_check_pressed(vk_enter)) {
           script_execute(scrShieldsStern);
        }
    } else if(input == "a") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l"
        }
    } else if(input == "al") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l"
        }
    } else if(input == "all") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrShieldsAll);
        }
    }
} else if(currentState == gunState) {   //gunState checks
    for(i = 0; i <= maxEnemiesDesignationLength; i++) {
        for(j = 0; j < array_length_1d(enemies); j++) {
            if(string_length(input) == i) {
                if(keyboard_check_pressed(ord(string_char_at(string_upper(enemies[j].designation), i + 1)))) {
                    input += string_char_at(enemies[j].designation, i + 1);
                } else if(keyboard_check_pressed(vk_numpad0) && real(string_char_at(enemies[j].designation, i + 1)) == 0) {
                    input += "0";
                } else if(keyboard_check_pressed(vk_numpad1) && real(string_char_at(enemies[j].designation, i + 1)) == 1) {
                    input += "1";
                } else if(keyboard_check_pressed(vk_numpad2) && real(string_char_at(enemies[j].designation, i + 1)) == 2) {
                    input += "2";
                } else if(keyboard_check_pressed(vk_numpad3) && real(string_char_at(enemies[j].designation, i + 1)) == 3) {
                    input += "3";
                } else if(keyboard_check_pressed(vk_numpad4) && real(string_char_at(enemies[j].designation, i + 1)) == 4) {
                    input += "4";
                } else if(keyboard_check_pressed(vk_numpad5) && real(string_char_at(enemies[j].designation, i + 1)) == 5) {
                    input += "5";
                } else if(keyboard_check_pressed(vk_numpad6) && real(string_char_at(enemies[j].designation, i + 1)) == 6) {
                    input += "6";
                } else if(keyboard_check_pressed(vk_numpad7) && real(string_char_at(enemies[j].designation, i + 1)) == 7) {
                    input += "7";
                } else if(keyboard_check_pressed(vk_numpad8) && real(string_char_at(enemies[j].designation, i + 1)) == 8) {
                    input += "8";
                } else if(keyboard_check_pressed(vk_numpad9) && real(string_char_at(enemies[j].designation, i + 1)) == 9) {
                    input += "9";
                } else if(keyboard_check_pressed(vk_enter)) {
                    script_execute(scrGuns); 
                }
            }
        }
    }
} else if(currentState == cannonState) {    //cannonState checks
    if(input == "") {
        if(keyboard_check_pressed(ord("F"))) {
            input += "f";
        }
    } else if(input == "f") {
        if(keyboard_check_pressed(ord("I"))) {
            input += "i";
        }
    } else if(input == "fi") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "fir") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "fire") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCannon);
        }
    }
} else if(currentState == cutState) {   //cutState checks
    if(input == "") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        } else if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        } else if(keyboard_check_pressed(ord("G"))) {
            input += "g";
        } else if(keyboard_check_pressed(ord("C"))) {
            input += "c";
        } else if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        } 
    } else if(input == "t") {
        if(keyboard_check_pressed(ord("H"))) {
            input += "h";
        }
    } else if(input == "th") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "thr") {
        if(keyboard_check_pressed(ord("U"))) {
            input += "u";
        }
    } else if(input == "thru") {
        if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        }
    } else if(input == "thrus") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "thrust") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "thruste") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "thruster") {
        if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        }
    } else if(input == "s") {
        if(keyboard_check_pressed(ord("H"))) {
            input += "h";
        }
    } else if(input == "sh") {
        if(keyboard_check_pressed(ord("I"))) {
            input += "i";
        }
    } else if(input == "shi") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "shie") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        }
    } else if(input == "shiel") {
        if(keyboard_check_pressed(ord("D"))) {
            input += "d";
        }
    } else if(input == "shield") {
        if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        }
    } else if(input == "g") {
        if(keyboard_check_pressed(ord("U"))) {
            input += "u";
        }
    } else if(input == "gu") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "gun") {
        if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        }
    } else if(input == "guns") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutGuns);
        }
    } else if(input == "c") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        }
    } else if(input == "ca") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "can") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "cann") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "canno") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "cannon") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutCannon);
        }
    } else if(input == "a") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        }
    } else if(input == "al") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        }
    } else if(input == "all") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutAll);
        }
    }
} else if(currentState == cutThrustersState) {  //cutThrustersState checks
    if(input == "") {
        if(keyboard_check_pressed(ord("P"))) {
            input += "p";
        } else if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        } else if(keyboard_check_pressed(ord("B"))) {
            input += "b";
        } else if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        } else if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "p") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "po") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "por") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "port") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutThrustersPort);
        }
    } else if(input == "s") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "st") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        } else if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "sta") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "star") {
        if(keyboard_check_pressed(ord("B"))) {
            input += "b";
        }
    } else if(input == "starb") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "starbo") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        }
    } else if(input == "starboa") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "starboar") {
        if(keyboard_check_pressed(ord("D"))) {
            input += "d";
        }
    } else if(input == "starboard") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutThrustersStarboard);
        }
    } else if(input == "b") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "bo") {
        if(keyboard_check_pressed(ord("W"))) {
            input += "w";
        }
    } else if(input == "bow") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutThrustersBow);
        }
    } else if(input == "ste") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "ster") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "stern") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutThrustersStern);
        }
    } else if(input == "a") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        }
    } else if(input == "al") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        }
    } else if(input == "all") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutThrustersAll);
        }
    } else if(input == "r") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "ro") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "rot") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        }
    } else if(input == "rota") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "rotat") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    }
} else if(currentState == cutThrustersRotateState) {    //cutThrustersRotateState checks
    if(input == "") {
        if(keyboard_check_pressed(ord("C"))) {
            input += "c";
        } else if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        }
    } else if(input == "c") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        } else if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "cl") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "clo") {
        if(keyboard_check_pressed(ord("C"))) {
            input += "c";
        }
    } else if(input == "cloc") {
        if(keyboard_check_pressed(ord("K"))) {
            input += "k";
        }
    } else if(input == "clock") {
        if(keyboard_check_pressed(ord("W"))) {
            input += "w";
        }
    } else if(input == "clockw") {
        if(keyboard_check_pressed(ord("I"))) {
            input += "i";
        }
    } else if(input == "clockwi") {
        if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        }
    } else if(input == "clockwis") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "clockwise") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutThrustersRotateClockwise);
        }
    } else if(input == "co") {
        if(keyboard_check_pressed(ord("U"))) {
            input += "u";
        }
    } else if(input == "cou") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "coun") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "count") {
        if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "counte") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "counter") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutThrustersRotateCounterclockwise);
        }
    } else if(input == "a") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        }
    } else if(input == "al") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        }
    } else if(input == "all") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutThrustersRotateAll);
        }
    }
} else if(currentState == cutShieldsState) {    //cutShieldsState checks
    if(input == "") {
        if(keyboard_check_pressed(ord("P"))) {
            input += "p";
        } else if(keyboard_check_pressed(ord("S"))) {
            input += "s";
        } else if(keyboard_check_pressed(ord("B"))) {
            input += "b";
        } else if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        }
    } else if(input == "p") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "po") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "por") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "port") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutShieldsPort);
        }
    } else if(input == "s") {
        if(keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if(input == "st") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        } else if(keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if(input == "sta") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "star") {
        if(keyboard_check_pressed(ord("B"))) {
            input += "b";
        }
    } else if(input == "starb") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "starbo") {
        if(keyboard_check_pressed(ord("A"))) {
            input += "a";
        }
    } else if(input == "starboa") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "starboar") {
        if(keyboard_check_pressed(ord("D"))) {
            input += "d";
        }
    } else if(input == "starboard") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutShieldsStarboard);
        }
    } else if(input == "b") {
        if(keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if(input == "bo") {
        if(keyboard_check_pressed(ord("W"))) {
            input += "w";
        }
    } else if(input == "bow") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutShieldsBow);
        }       
    } else if(input == "ste") {
        if(keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if(input == "ster") {
        if(keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if(input == "stern") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutShieldsStern);
        }
    } else if(input == "a") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        }
    } else if(input == "al") {
        if(keyboard_check_pressed(ord("L"))) {
            input += "l";
        }
    } else if(input == "all") {
        if(keyboard_check_pressed(vk_enter)) {
            script_execute(scrCutShieldsAll);
        }
    }
}
