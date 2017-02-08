script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Stern"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Stern#" + string(actionMap[? "Thrusters Stern"])));
    actionMap[? "Thrusters Stern"] = 0;
}
