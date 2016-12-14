if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? "Thrusters Clock"] > 0)) {
    actionMap[? "Thrusters Clock"] = real(input);
} else if(actionMap[? "Thrusters Clock"] > 0) {
    actionMap[? "Thrusters Clock"] = actionMap[? "Thrusters Clock"] + real(input);
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
