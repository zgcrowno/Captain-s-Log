script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Count"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Count#" + string(actionMap[? "Thrusters Count"])));
    actionMap[? "Thrusters Count"] = 0;
}
