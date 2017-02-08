script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Clock"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Clock#" + string(actionMap[? "Thrusters Clock"])));
    actionMap[? "Thrusters Clock"] = 0;
}
