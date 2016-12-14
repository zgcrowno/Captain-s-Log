if(!(requiredPPThrusters > currentPP) && !(actionMap[? "Thrusters Port"] > 0)) {
    actionMap[? "Thrusters Port"] = real(input);
} else if(actionMap[? "Thrusters Port"] > 0) {
    actionMap[? "Thrusters Port"] = actionMap[? "Thrusters Port"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
