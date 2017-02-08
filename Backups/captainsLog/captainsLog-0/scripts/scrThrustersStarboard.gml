if(!(requiredPPThrusters > currentPP) && !(actionMap[? "Thrusters Starboard"] > 0)) {
    actionMap[? "Thrusters Starboard"] = real(input);
    ds_list_add(actionQueue, "Thrst#Star#" + input);
} else if(actionMap[? "Thrusters Port"] > 0) {
    actionQueue[| real(actionQueue[| "Thrst#Star#" + string(actionMap[? "Thrusters Starboard"])])] = "Thrst#Star#" + string(actionMap[? "Thrusters Starboard"] + real(input));
    actionMap[? "Thrusters Starboard"] = actionMap[? "Thrusters Starboard"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
