script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Port"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Port#" + string(actionMap[? "Thrusters Port"])));
    actionMap[? "Thrusters Port"] = 0;
}
if(actionMap[? "Thrusters Starboard"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Star#" + string(actionMap[? "Thrusters Starboard"])));
    actionMap[? "Thrusters Starboard"] = 0;
}
if(actionMap[? "Thrusters Bow"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Bow#" + string(actionMap[? "Thrusters Bow"])));
    actionMap[? "Thrusters Bow"] = 0;
}
if(actionMap[? "Thrusters Stern"] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Thrst#Stern#" + string(actionMap[? "Thrusters Stern"])));
    actionMap[? "Thrusters Stern"] = 0;
}
