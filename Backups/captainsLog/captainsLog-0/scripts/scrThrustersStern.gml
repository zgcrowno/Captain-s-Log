if(!(requiredPPThrusters > currentPP) && !(actionMap[? "Thrusters Stern"] > 0)) {
    actionMap[? "Thrusters Stern"] = real(input);
} else if(thrustersStern) {
    actionMap[? "Thrusters Stern"] = actionMap[? "Thrusters Stern"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
