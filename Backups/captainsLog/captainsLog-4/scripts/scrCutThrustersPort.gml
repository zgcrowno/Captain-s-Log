script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Port"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Port#" + string(actionMap[? "Thrusters Port"])));
    actionMap[? "Thrusters Port"] = 0;
}
