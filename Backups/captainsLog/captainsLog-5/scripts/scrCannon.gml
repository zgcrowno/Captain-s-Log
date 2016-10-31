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
