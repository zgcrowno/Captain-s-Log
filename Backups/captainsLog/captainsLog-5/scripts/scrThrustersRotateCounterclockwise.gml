if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? "Thrusters Count"] > 0)) {
    actionMap[? "Thrusters Count"] = real(input);
} else if(actionMap[? "Thrusters Count"] > 0) {
    actionMap[? "Thrusters Count"] = actionMap[? "Thrusters Count"] + real(input);
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
