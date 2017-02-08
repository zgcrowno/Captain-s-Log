if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? "Thrusters Count"] > 0)) {
    actionMap[? "Thrusters Count"] = real(input);
    ds_list_add(actionQueue, "Thrst#Count#" + input);
} else if(actionMap[? "Thrusters Count"] > 0) {
    actionQueue[| real(actionQueue[| "Thrst#Count#" + string(actionMap[? "Thrusters Count"])])] = "Thrst#Count#" + string(actionMap[? "Thrusters Count"] + real(input));
    actionMap[? "Thrusters Count"] = actionMap[? "Thrusters Count"] + real(input);
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
