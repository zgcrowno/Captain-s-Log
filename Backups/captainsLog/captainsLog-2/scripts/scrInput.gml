script_execute(scrGetEnemies);

if(keyboard_check_pressed(vk_tab)) {
    //In the future, it might be wise to configure the instance data states in such
    //a way that currentState will be decremented here.
    currentState = initState;
    input = "";
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
        if(!(requiredPPThrustersRotate > currentPP) && !thrustersRotateClockwise) {
            degreesToRotateClockwise = real(input);
            currentState = initState;
            input = "";
            thrustersRotateClockwise = true;
            currentPP -= requiredPPThrustersRotate;
            currentPPThrustersRotateClockwise += requiredPPThrustersRotate;
        } else if(thrustersRotateClockwise) {
            degreesToRotateClockwise += real(input);
            currentState = initState;
            input = "";
        } else {
            currentState = initState;
            input = "";
            //To Do: Error to user about lack of power...
        }
        destination.x = x;
        destination.y = y;
        destination.image_angle = image_angle;
        destination.thrustersPort = thrustersPort;
        destination.thrustersStarboard = thrustersStarboard;
        destination.thrustersBow = thrustersBow;
        destination.thrustersStern = thrustersStern;
        destination.thrustersRotateClockwise = thrustersRotateClockwise;
        destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
        destination.distanceToCover = distanceToCover;
        destination.distanceToCoverPort = distanceToCoverPort;
        destination.distanceToCoverStarboard = distanceToCoverStarboard;
        destination.distanceToCoverBow = distanceToCoverBow;
        destination.distanceToCoverStern = distanceToCoverStern;
        destination.degreesToRotateClockwise = degreesToRotateClockwise;
        destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
        destination.degreesRotatedClockwise = degreesRotatedClockwise;
        destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
        destination.numActiveThrusters = numActiveThrusters;
        destination.distanceToCoverPort += real(input);
        destination.distanceToCover += real(input);
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
        if(!(requiredPPThrustersRotate > currentPP) && !thrustersRotateCounterclockwise) {
            degreesToRotateCounterclockwise = real(input);
            currentState = initState;
            input = "";
            thrustersRotateCounterclockwise = true;
            currentPP -= requiredPPThrustersRotate;
            currentPPThrustersRotateCounterclockwise += requiredPPThrustersRotate;
         } else if(thrustersRotateCounterclockwise) {
            degreesToRotateCounterclockwise += real(input);
            currentState = initState;
            input = "";
         } else {
            currentState = initState;
            input = "";
            //To Do: Error to user about lack of power...
         }
        destination.x = x;
        destination.y = y;
        destination.image_angle = image_angle;
        destination.thrustersPort = thrustersPort;
        destination.thrustersStarboard = thrustersStarboard;
        destination.thrustersBow = thrustersBow;
        destination.thrustersStern = thrustersStern;
        destination.thrustersRotateClockwise = thrustersRotateClockwise;
        destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
        destination.distanceToCover = distanceToCover;
        destination.distanceToCoverPort = distanceToCoverPort;
        destination.distanceToCoverStarboard = distanceToCoverStarboard;
        destination.distanceToCoverBow = distanceToCoverBow;
        destination.distanceToCoverStern = distanceToCoverStern;
        destination.degreesToRotateClockwise = degreesToRotateClockwise;
        destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
        destination.degreesRotatedClockwise = degreesRotatedClockwise;
        destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
        destination.numActiveThrusters = numActiveThrusters;
        destination.distanceToCoverPort += real(input);
        destination.distanceToCover += real(input);
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
            if(!(requiredPPShields > currentPP) && !shieldsPort) {
                shieldsPort = true;
                currentState = initState;
                input = "";
                currentPP -= requiredPPShields;
                currentPPShieldsPort += requiredPPShields;
            } else if(shieldsPort) {
                currentState = initState;
                input = "";
            } else {
                currentState = initState;
                input = "";
                //To Do: Error to user about lack of power...
            }
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
            if(!(requiredPPShields > currentPP) && !shieldsStarboard) {
                shieldsStarboard = true;
                currentState = initState;
                input = "";
                currentPP -= requiredPPShields;
                currentPPShieldsStarboard += requiredPPShields;
            } else if(shieldsStarboard) {
                currentState = initState;
                input = "";
            } else {
                currentState = initState;
                input = "";
                //To Do: Error to user about lack of power...
            }
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
            if(!(requiredPPShields > currentPP) && !shieldsBow) {
                shieldsBow = true;
                currentState = initState;
                input = "";
                currentPP -= requiredPPShields;
                currentPPShieldsBow += requiredPPShields;
            } else if(shieldsBow) {
                currentState = initState;
                input = "";
            } else {
                currentState = initState;
                input = "";
                //To Do: Error to user about lack of power...
            }
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
            if(!(requiredPPShields > currentPP) && !shieldsStern) {
                shieldsStern = true;
                currentState = initState;
                input = "";
                currentPP -= requiredPPShields;
                currentPPShieldsStern += requiredPPShields;
            } else if(shieldsStern) {
                currentState = initState;
                input = "";
            } else {
                currentState = initState;
                input = "";
                //To Do: Error to user about lack of power...
            }
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
            if(!((requiredPPShields * 4) > currentPP) && !shieldsPort && !shieldsStarboard && !shieldsBow && !shieldsStern) {
                shieldsPort = true;
                shieldsStarboard = true;
                shieldsBow = true;
                shieldsStern = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 4);
                currentPPShieldsPort += requiredPPShields;
                currentPPShieldsStarboard += requiredPPShields;
                currentPPShieldsBow += requiredPPShields;
                currentPPShieldsStern += requiredPPShields;
            } else if(!((requiredPPShields * 3) > currentPP) && shieldsPort && !shieldsStarboard && !shieldsBow && !shieldsStern) {
                shieldsStarboard = true;
                shieldsBow = true;
                shieldsStern = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 3);
                currentPPShieldsStarboard += requiredPPShields;
                currentPPShieldsBow += requiredPPShields;
                currentPPShieldsStern += requiredPPShields;
            } else if(!((requiredPPShields * 3) > currentPP) && !shieldsPort && shieldsStarboard && !shieldsBow && !shieldsStern) {
                shieldsPort = true;
                shieldsBow = true;
                shieldsStern = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 3);
                currentPPShieldsPort += requiredPPShields;
                currentPPShieldsBow += requiredPPShields;
                currentPPShieldsStern += requiredPPShields;
            } else if(!((requiredPPShields * 3) > currentPP) && !shieldsPort && !shieldsStarboard && shieldsBow && !shieldsStern) {
                shieldsPort = true;
                shieldsStarboard = true;
                shieldsStern = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 3);
                currentPPShieldsPort += requiredPPShields;
                currentPPShieldsStarboard += requiredPPShields;
                currentPPShieldsStern += requiredPPShields;
            } else if(!((requiredPPShields * 3) > currentPP) && !shieldsPort && !shieldsStarboard && !shieldsBow && shieldsStern) {
                shieldsPort = true;
                shieldsStarboard = true;
                shieldsBow = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 3);
                currentPPShieldsPort += requiredPPShields;
                currentPPShieldsStarboard += requiredPPShields;
                currentPPShieldsBow += requiredPPShields;
            } else if(!((requiredPPShields * 2) > currentPP) && shieldsPort && shieldsStarboard && !shieldsBow && !shieldsStern) {
                shieldsBow = true;
                shieldsStern = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 2);
                currentPPShieldsBow += requiredPPShields;
                currentPPShieldsStern += requiredPPShields;
            } else if(!((requiredPPShields * 2) > currentPP) && shieldsPort && !shieldsStarboard && shieldsBow && !shieldsStern) {
                shieldsStarboard = true;
                shieldsStern = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 2);
                currentPPShieldsStarboard += requiredPPShields;
                currentPPShieldsStern += requiredPPShields;
            } else if(!((requiredPPShields * 2) > currentPP) && shieldsPort && !shieldsStarboard && !shieldsBow && shieldsStern) {
                shieldsStarboard = true;
                shieldsBow = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 2);
                currentPPShieldsStarboard += requiredPPShields;
                currentPPShieldsBow += requiredPPShields;
            } else if(!((requiredPPShields * 2) > currentPP) && !shieldsPort && shieldsStarboard && shieldsBow && !shieldsStern) {
                shieldsPort = true;
                shieldsStern = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 2);
                currentPPShieldsPort += requiredPPShields;
                currentPPShieldsStern += requiredPPShields;
            } else if(!((requiredPPShields * 2) > currentPP) && !shieldsPort && shieldsStarboard && !shieldsBow && shieldsStern) {
                shieldsPort = true;
                shieldsBow = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 2);
                currentPPShieldsPort += requiredPPShields;
                currentPPShieldsBow += requiredPPShields;
            } else if(!((requiredPPShields * 2) > currentPP) && !shieldsPort && !shieldsStarboard && shieldsBow && shieldsStern) {
                shieldsPort = true;
                shieldsStarboard = true;
                currentState = initState;
                input = "";
                currentPP -= (requiredPPShields * 2);
                currentPPShieldsPort += requiredPPShields;
                currentPPShieldsStarboard += requiredPPShields;
            } else if(!(requiredPPShields > currentPP) && !shieldsPort && shieldsStarboard && shieldsBow && shieldsStern) {
                shieldsPort = true;
                currentState = initState;
                input = "";
                currentPP -= requiredPPShields;
                currentPPShieldsPort += requiredPPShields;
            } else if(!(requiredPPShields > currentPP) && shieldsPort && !shieldsStarboard && shieldsBow && shieldsStern) {
                shieldsStarboard = true;
                currentState = initState;
                input = "";
                currentPP -= requiredPPShields;
                currentPPShieldsStarboard += requiredPPShields;
            } else if(!(requiredPPShields > currentPP) && shieldsPort && shieldsStarboard && !shieldsBow && shieldsStern) {
                shieldsBow = true;
                currentState = initState;
                input = "";
                currentPP -= requiredPPShields;
                currentPPShieldsBow += requiredPPShields;
            } else if(!(requiredPPShields > currentPP) && shieldsPort && shieldsStarboard && shieldsBow && !shieldsStern) {
                shieldsStern = true;
                currentState = initState;
                input = "";
                currentPP -= requiredPPShields;
                currentPPShieldsStern += requiredPPShields;
            } else if(shieldsPort && shieldsStarboard && shieldsBow && shieldsStern) {
                currentState = initState;
                input = "";
            } else {
                currentState = initState;
                input = "";
                //To Do: Error to user about lack of power
            }
        }
    }
} else if(currentState == gunState) {   //gunState checks
    for(i = 0; i <= maxPawnsDesignationLength; i++) {
        for(j = 0; j < array_length_1d(pawns); j++) {
            if(string_length(input) == i) {
                if(keyboard_check_pressed(ord(string_char_at(string_upper(pawns[j].designation), i + 1)))) {
                    input += string_char_at(pawns[j].designation, i + 1);
                } else if(keyboard_check_pressed(vk_numpad0) && real(string_char_at(pawns[j].designation, i + 1)) == 0) {
                    input += "0";
                } else if(keyboard_check_pressed(vk_numpad1) && real(string_char_at(pawns[j].designation, i + 1)) == 1) {
                    input += "1";
                } else if(keyboard_check_pressed(vk_numpad2) && real(string_char_at(pawns[j].designation, i + 1)) == 2) {
                    input += "2";
                } else if(keyboard_check_pressed(vk_numpad3) && real(string_char_at(pawns[j].designation, i + 1)) == 3) {
                    input += "3";
                } else if(keyboard_check_pressed(vk_numpad4) && real(string_char_at(pawns[j].designation, i + 1)) == 4) {
                    input += "4";
                } else if(keyboard_check_pressed(vk_numpad5) && real(string_char_at(pawns[j].designation, i + 1)) == 5) {
                    input += "5";
                } else if(keyboard_check_pressed(vk_numpad6) && real(string_char_at(pawns[j].designation, i + 1)) == 6) {
                    input += "6";
                } else if(keyboard_check_pressed(vk_numpad7) && real(string_char_at(pawns[j].designation, i + 1)) == 7) {
                    input += "7";
                } else if(keyboard_check_pressed(vk_numpad8) && real(string_char_at(pawns[j].designation, i + 1)) == 8) {
                    input += "8";
                } else if(keyboard_check_pressed(vk_numpad9) && real(string_char_at(pawns[j].designation, i + 1)) == 9) {
                    input += "9";
                } else if(keyboard_check_pressed(vk_enter)) {
                    for(k = 0; k < array_length_1d(pawns); k++) {
                        if(pawns[k].designation == input) {
                            if(!(requiredPPGuns > currentPP) && !guns) {
                                target = pawns[k];
                                targetID = pawns[k].id;
                                guns = true;
                                currentPP -= requiredPPGuns;
                                currentPPGuns += requiredPPGuns;
                            } else if(guns) {
                                target = pawns[k];
                                targetID = pawns[k].id;
                                guns = true;
                            } else {
                                //Error to user about lack of power
                            }
                        }
                    }
                    currentState = initState;
                    input = ""; 
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
            currentState = initState;
            input = "";
            if(currentPPCannon == 0) {
                if(currentPP >= requiredPPCannon) {
                    currentPPCannon += requiredPPCannon;
                    currentPP -= requiredPPCannon;
                    script_execute(scrAttackCannon);
                } else {
                    //To Do: Error message to user about insufficient power
                }
            } else {
                //To Do: Error message to user about cooldown
            }
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
            input = "";
            currentState = initState;
            if(guns) {
                guns = false;
                bulletTimer = 0;
                currentPPGuns = 0;
                currentPP += requiredPPGuns;
            }
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
            if(cannon) {
                input = "";
                currentState = initState;
                cannon = false;
                currentPPCannon = 0;
            }
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
            input = "";
            currentState = initState;
            if(thrustersPort) {
                currentPP += requiredPPThrusters;
                currentPPThrustersPort -= requiredPPThrustersRotate;
            }
            if(thrustersStarboard) {
                currentPP += requiredPPThrusters;
                currentPPThrustersStarboard -= requiredPPThrusters;
            }
            if(thrustersBow) {
                currentPP += requiredPPThrusters;
                currentPPThrustersBow -= requiredPPThrusters;
            }
            if(thrustersStern) {
                currentPP += requiredPPThrusters;
                currentPPThrustersStern -= requiredPPThrusters;
            }
            if(thrustersRotateClockwise) {
                currentPP += requiredPPThrustersRotate;
                currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
            }
            if(thrustersRotateCounterclockwise) {
                currentPP += requiredPPThrustersRotate;
                currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
            }
            if(shieldsPort) {
                currentPP += requiredPPShields;
                currentPPShieldsPort -= requiredPPShields;
            } 
            if(shieldsStarboard) {
                currentPP += requiredPPShields;
                currentPPShieldsStarboard -= requiredPPShields;
            } 
            if(shieldsBow) {
                currentPP += requiredPPShields;
                currentPPShieldsBow -= requiredPPShields;
            }
            if(shieldsStern) {
                currentPP += requiredPPShields;
                currentPPShieldsStern -= requiredPPShields;
            }
            if(guns) {
                currentPP += requiredPPGuns;
                currentPPGuns -= requiredPPGuns;
                bulletTimer = 0;
            }
            if(cannon) {
                currentPP += requiredPPCannon;
                currentPPCannon -= requiredPPCannon;
            }
            thrustersPort = false;
            thrustersStarboard = false;
            thrustersBow = false;
            thrustersStern = false;
            thrustersRotateClockwise = false;
            thrustersRotateCounterclockwise = false;
            shieldsPort = false;
            shieldsStarboard = false;
            shieldsBow = false;
            shieldsStern = false;
            guns = false;
            cannon = false;
            destination.x = x;
            destination.y = y;
            destination.image_angle = image_angle;
            destination.thrustersPort = thrustersPort;
            destination.thrustersStarboard = thrustersStarboard;
            destination.thrustersBow = thrustersBow;
            destination.thrustersStern = thrustersStern;
            destination.thrustersRotateClockwise = thrustersRotateClockwise;
            destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
            destination.distanceToCover = distanceToCover;
            destination.distanceToCoverPort = distanceToCoverPort;
            destination.distanceToCoverStarboard = distanceToCoverStarboard;
            destination.distanceToCoverBow = distanceToCoverBow;
            destination.distanceToCoverStern = distanceToCoverStern;
            destination.degreesToRotateClockwise = degreesToRotateClockwise;
            destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
            destination.degreesRotatedClockwise = degreesRotatedClockwise;
            destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
            destination.numActiveThrusters = numActiveThrusters;
            destination.distanceToCoverPort += real(input);
            destination.distanceToCover += real(input);
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
            input = "";
            currentState = initState;
            if(thrustersPort) {
                currentPP += requiredPPThrusters;
                currentPPThrustersPort -= requiredPPThrusters;
                thrustersPort = false;
            }
            destination.x = x;
            destination.y = y;
            destination.image_angle = image_angle;
            destination.thrustersPort = thrustersPort;
            destination.thrustersStarboard = thrustersStarboard;
            destination.thrustersBow = thrustersBow;
            destination.thrustersStern = thrustersStern;
            destination.thrustersRotateClockwise = thrustersRotateClockwise;
            destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
            destination.distanceToCover = distanceToCover;
            destination.distanceToCoverPort = distanceToCoverPort;
            destination.distanceToCoverStarboard = distanceToCoverStarboard;
            destination.distanceToCoverBow = distanceToCoverBow;
            destination.distanceToCoverStern = distanceToCoverStern;
            destination.degreesToRotateClockwise = degreesToRotateClockwise;
            destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
            destination.degreesRotatedClockwise = degreesRotatedClockwise;
            destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
            destination.numActiveThrusters = numActiveThrusters;
            destination.distanceToCoverPort += real(input);
            destination.distanceToCover += real(input);
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
            input = "";
            currentState = initState;
            if(thrustersStarboard) {
                currentPP += requiredPPThrusters;
                currentPPThrustersStarboard -= requiredPPThrusters;
                thrustersStarboard = false;
            }
            destination.x = x;
            destination.y = y;
            destination.image_angle = image_angle;
            destination.thrustersPort = thrustersPort;
            destination.thrustersStarboard = thrustersStarboard;
            destination.thrustersBow = thrustersBow;
            destination.thrustersStern = thrustersStern;
            destination.thrustersRotateClockwise = thrustersRotateClockwise;
            destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
            destination.distanceToCover = distanceToCover;
            destination.distanceToCoverPort = distanceToCoverPort;
            destination.distanceToCoverStarboard = distanceToCoverStarboard;
            destination.distanceToCoverBow = distanceToCoverBow;
            destination.distanceToCoverStern = distanceToCoverStern;
            destination.degreesToRotateClockwise = degreesToRotateClockwise;
            destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
            destination.degreesRotatedClockwise = degreesRotatedClockwise;
            destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
            destination.numActiveThrusters = numActiveThrusters;
            destination.distanceToCoverPort += real(input);
            destination.distanceToCover += real(input);
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
            input = "";
            currentState = initState;
            if(thrustersBow) {
                currentPP += requiredPPThrusters;
                currentPPThrustersBow -= requiredPPThrusters;
                thrustersBow = false;
            }
            destination.x = x;
            destination.y = y;
            destination.image_angle = image_angle;
            destination.thrustersPort = thrustersPort;
            destination.thrustersStarboard = thrustersStarboard;
            destination.thrustersBow = thrustersBow;
            destination.thrustersStern = thrustersStern;
            destination.thrustersRotateClockwise = thrustersRotateClockwise;
            destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
            destination.distanceToCover = distanceToCover;
            destination.distanceToCoverPort = distanceToCoverPort;
            destination.distanceToCoverStarboard = distanceToCoverStarboard;
            destination.distanceToCoverBow = distanceToCoverBow;
            destination.distanceToCoverStern = distanceToCoverStern;
            destination.degreesToRotateClockwise = degreesToRotateClockwise;
            destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
            destination.degreesRotatedClockwise = degreesRotatedClockwise;
            destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
            destination.numActiveThrusters = numActiveThrusters;
            destination.distanceToCoverPort += real(input);
            destination.distanceToCover += real(input);
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
            input = "";
            currentState = initState;
            if(thrustersStern) {
                currentPP += requiredPPThrusters;
                currentPPThrustersStern -= requiredPPThrusters;
                thrustersStern = false;
            }
            destination.x = x;
            destination.y = y;
            destination.image_angle = image_angle;
            destination.thrustersPort = thrustersPort;
            destination.thrustersStarboard = thrustersStarboard;
            destination.thrustersBow = thrustersBow;
            destination.thrustersStern = thrustersStern;
            destination.thrustersRotateClockwise = thrustersRotateClockwise;
            destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
            destination.distanceToCover = distanceToCover;
            destination.distanceToCoverPort = distanceToCoverPort;
            destination.distanceToCoverStarboard = distanceToCoverStarboard;
            destination.distanceToCoverBow = distanceToCoverBow;
            destination.distanceToCoverStern = distanceToCoverStern;
            destination.degreesToRotateClockwise = degreesToRotateClockwise;
            destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
            destination.degreesRotatedClockwise = degreesRotatedClockwise;
            destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
            destination.numActiveThrusters = numActiveThrusters;
            destination.distanceToCoverPort += real(input);
            destination.distanceToCover += real(input);
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
            input = "";
            currentState = initState;
            if(thrustersPort) {
                currentPP += requiredPPThrusters;
                currentPPThrustersPort -= requiredPPThrusters;
                thrustersPort = false;
            }
            if(thrustersStarboard) {
                currentPP += requiredPPThrusters;
                currentPPThrustersStarboard -= requiredPPThrusters;
                thrustersStarboard = false;
            }
            if(thrustersBow) {
                currentPP += requiredPPThrusters;
                currentPPThrustersBow -= requiredPPThrusters;
                thrustersBow = false;
            }
            if(thrustersStern) {
                currentPP += requiredPPThrusters;
                currentPPThrustersStern -= requiredPPThrusters;
                thrustersStern = false;
            }
            destination.x = x;
            destination.y = y;
            destination.image_angle = image_angle;
            destination.thrustersPort = thrustersPort;
            destination.thrustersStarboard = thrustersStarboard;
            destination.thrustersBow = thrustersBow;
            destination.thrustersStern = thrustersStern;
            destination.thrustersRotateClockwise = thrustersRotateClockwise;
            destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
            destination.distanceToCover = distanceToCover;
            destination.distanceToCoverPort = distanceToCoverPort;
            destination.distanceToCoverStarboard = distanceToCoverStarboard;
            destination.distanceToCoverBow = distanceToCoverBow;
            destination.distanceToCoverStern = distanceToCoverStern;
            destination.degreesToRotateClockwise = degreesToRotateClockwise;
            destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
            destination.degreesRotatedClockwise = degreesRotatedClockwise;
            destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
            destination.numActiveThrusters = numActiveThrusters;
            destination.distanceToCoverPort += real(input);
            destination.distanceToCover += real(input);
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
            input = "";
            currentState = initState;
            if(thrustersRotateClockwise) {
                currentPP += requiredPPThrustersRotate;
                currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
                thrustersRotateClockwise = false;
            }
            destination.x = x;
            destination.y = y;
            destination.image_angle = image_angle;
            destination.thrustersPort = thrustersPort;
            destination.thrustersStarboard = thrustersStarboard;
            destination.thrustersBow = thrustersBow;
            destination.thrustersStern = thrustersStern;
            destination.thrustersRotateClockwise = thrustersRotateClockwise;
            destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
            destination.distanceToCover = distanceToCover;
            destination.distanceToCoverPort = distanceToCoverPort;
            destination.distanceToCoverStarboard = distanceToCoverStarboard;
            destination.distanceToCoverBow = distanceToCoverBow;
            destination.distanceToCoverStern = distanceToCoverStern;
            destination.degreesToRotateClockwise = degreesToRotateClockwise;
            destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
            destination.degreesRotatedClockwise = degreesRotatedClockwise;
            destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
            destination.numActiveThrusters = numActiveThrusters;
            destination.distanceToCoverPort += real(input);
            destination.distanceToCover += real(input);
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
            input = "";
            currentState = initState;
            if(thrustersRotateCounterclockwise) {
                currentPP += requiredPPThrustersRotate;
                currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
                thrustersRotateCounterclockwise = false;
            }
            destination.x = x;
            destination.y = y;
            destination.image_angle = image_angle;
            destination.thrustersPort = thrustersPort;
            destination.thrustersStarboard = thrustersStarboard;
            destination.thrustersBow = thrustersBow;
            destination.thrustersStern = thrustersStern;
            destination.thrustersRotateClockwise = thrustersRotateClockwise;
            destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
            destination.distanceToCover = distanceToCover;
            destination.distanceToCoverPort = distanceToCoverPort;
            destination.distanceToCoverStarboard = distanceToCoverStarboard;
            destination.distanceToCoverBow = distanceToCoverBow;
            destination.distanceToCoverStern = distanceToCoverStern;
            destination.degreesToRotateClockwise = degreesToRotateClockwise;
            destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
            destination.degreesRotatedClockwise = degreesRotatedClockwise;
            destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
            destination.numActiveThrusters = numActiveThrusters;
            destination.distanceToCoverPort += real(input);
            destination.distanceToCover += real(input);
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
            input = "";
            currentState = initState;
            if(thrustersRotateClockwise) {
                currentPP += requiredPPThrustersRotate;
                currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
                thrustersRotateClockwise = false;
            }
            if(thrustersRotateCounterclockwise) {
                currentPP += requiredPPThrustersRotate;
                currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
                thrustersRotateCounterclockwise = false;
            }
            destination.x = x;
            destination.y = y;
            destination.image_angle = image_angle;
            destination.thrustersPort = thrustersPort;
            destination.thrustersStarboard = thrustersStarboard;
            destination.thrustersBow = thrustersBow;
            destination.thrustersStern = thrustersStern;
            destination.thrustersRotateClockwise = thrustersRotateClockwise;
            destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
            destination.distanceToCover = distanceToCover;
            destination.distanceToCoverPort = distanceToCoverPort;
            destination.distanceToCoverStarboard = distanceToCoverStarboard;
            destination.distanceToCoverBow = distanceToCoverBow;
            destination.distanceToCoverStern = distanceToCoverStern;
            destination.degreesToRotateClockwise = degreesToRotateClockwise;
            destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
            destination.degreesRotatedClockwise = degreesRotatedClockwise;
            destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
            destination.numActiveThrusters = numActiveThrusters;
            destination.distanceToCoverPort += real(input);
            destination.distanceToCover += real(input);
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
            input = "";
            currentState = initState;
            if(shieldsPort) {
                currentPP += requiredPPShields;
                currentPPShieldsPort -= requiredPPShields;
                shieldsPort = false;
            }
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
            input = "";
            currentState = initState;
            if(shieldsStarboard) {
                currentPP += requiredPPShields;
                currentPPShieldsStarboard -= requiredPPShields;
                shieldsStarboard = false;
            }
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
            input = "";
            currentState = initState;
            if(shieldsBow) {
                currentPP += requiredPPShields;
                currentPPShieldsBow -= requiredPPShields;
                shieldsBow = false;
            }
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
            input = "";
            currentState = initState;
            if(shieldsStern) {
                currentPP += requiredPPShields;
                currentPPShieldsStern -= requiredPPShields;
                shieldsStern = false;
            }
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
            input = "";
            currentState = initState;
            if(shieldsPort) {
                currentPP += requiredPPShields;
                currentPPShieldsPort -= requiredPPShields;
                shieldsPort = false;
            }
            if(shieldsStarboard) {
                currentPP += requiredPPShields;
                currentPPShieldsStarboard -= requiredPPShields;
                shieldsStarboard = false;
            }
            if(shieldsBow) {
                currentPP += requiredPPShields;
                currentPPShieldsBow -= requiredPPShields;
                shieldsBow = false;
            }
            if(shieldsStern) {
                currentPP += requiredPPShields;
                currentPPShieldsStern -= requiredPPShields;
                shieldsStern = false;
            }
        }
    }
}
