if(!(requiredPPThrusters > currentPP) && !(actionMap[? "Thrusters Bow"] > 0)) {
    actionMap[? "Thrusters Bow"] = real(input);
    ds_list_add(actionQueue, "Thrst#Bow#" + input);
} else if(actionMap[? "Thrusters Bow"] > 0) {
    actionQueue[| "Thrst#Bow#" + actionMap[? "Thrusters Bow"]] = "Thrst#Bow#" + (actionMap[? "Thrusters Bow"] + input);
    actionMap[? "Thrusters Bow"] = actionMap[? "Thrusters Bow"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
