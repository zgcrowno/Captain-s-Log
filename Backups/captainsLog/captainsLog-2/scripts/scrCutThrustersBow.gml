if(actionMap[? "Thrusters Bow"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Bow#" + string(actionMap[? "Thrusters Bow"])));
    actionMap[? "Thrusters Bow"] = 0;
}
script_execute(scrWipeToInitState);
