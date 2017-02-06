if(!(requiredPPThrusters > currentPP) && !(actionMap[? "Thrusters Port"] > 0)) {
    actionMap[? "Thrusters Port"] = real(input);
    ds_list_add(actionQueue, "Thrst#Port#" + input);
} else if(actionMap[? "Thrusters Port"] > 0) {
    actionQueue[| "Thrst#Port#" + actionMap[? "Thrusters Port"]] = "Thrst#Port#" + (actionMap[? "Thrusters Port"] + input);
    actionMap[? "Thrusters Port"] = actionMap[? "Thrusters Port"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
