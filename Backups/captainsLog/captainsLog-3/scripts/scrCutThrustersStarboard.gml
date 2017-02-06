if(actionMap[? "Thrusters Starboard"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Star#" + actionMap[? "Thrusters Starboard"]);
    actionMap[? "Thrusters Starboard"] = 0;
}
script_execute(scrWipeToInitState);
