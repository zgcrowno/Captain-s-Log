if(!(requiredPPThrusters > currentPP) && !(actionMap[? "Thrusters Bow"] > 0)) {
    actionMap[? "Thrusters Bow"] = real(input);
} else if(actionMap[? "Thrusters Bow"] > 0) {
    actionMap[? "Thrusters Bow"] = actionMap[? "Thrusters Bow"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
