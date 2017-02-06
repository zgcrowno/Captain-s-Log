if(!(requiredPPThrusters > currentPP) && !(actionMap[? "Thrusters Starboard"] > 0)) {
    actionMap[? "Thrusters Starboard"] = real(input);
    ds_list_add(actionQueue, "Thrst#Star#" + input);
} else if(actionMap[? "Thrusters Port"] > 0) {
    actionQueue[| "Thrst#Starboard#" + actionMap[? "Thrusters Starboard"]] = "Thrst#Starboard#" + (actionMap[? "Thrusters Starboard"] + input);
    actionMap[? "Thrusters Starboard"] = actionMap[? "Thrusters Starboard"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
