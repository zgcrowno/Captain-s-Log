if(!(requiredPPThrusters > currentPP) && !(actionMap[? "Thrusters Starboard"] > 0)) {
    actionMap[? "Thrusters Starboard"] = real(input);
} else if(actionMap[? "Thrusters Port"] > 0) {
    actionMap[? "Thrusters Starboard"] = actionMap[? "Thrusters Starboard"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
