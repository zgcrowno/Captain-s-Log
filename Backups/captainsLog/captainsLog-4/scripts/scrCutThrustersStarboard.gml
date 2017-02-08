if(actionMap[? "Thrusters Starboard"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Star#" + string(actionMap[? "Thrusters Starboard"])));
    actionMap[? "Thrusters Starboard"] = 0;
}
script_execute(scrWipeToInitState);
