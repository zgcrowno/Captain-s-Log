if(!(requiredPPThrusters > currentPP) && !(actionMap[? "Thrusters Stern"] > 0)) {
    actionMap[? "Thrusters Stern"] = real(input);
    ds_list_add(actionQueue, "Thrst#Stern#" + input);
} else if(thrustersStern) {
    actionQueue[| real(actionQueue[| "Thrst#Stern#" + string(actionMap[? "Thrusters Stern"])])] = "Thrst#Stern#" + string(actionMap[? "Thrusters Stern"] + real(input));
    actionMap[? "Thrusters Stern"] = actionMap[? "Thrusters Stern"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
