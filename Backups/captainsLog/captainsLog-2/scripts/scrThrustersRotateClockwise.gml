if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? "Thrusters Clock"] > 0)) {
    actionMap[? "Thrusters Clock"] = real(input);
    ds_list_add(actionQueue, "Thrst#Clock#" + input);
} else if(actionMap[? "Thrusters Clock"] > 0) {
    actionQueue[| real(actionQueue[| "Thrst#Clock#" + string(actionMap[? "Thrusters Clock"])])] = "Thrst#Clock#" + string(actionMap[? "Thrusters Clock"] + real(input));
    actionMap[? "Thrusters Clock"] = actionMap[? "Thrusters Clock"] + real(input);
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
