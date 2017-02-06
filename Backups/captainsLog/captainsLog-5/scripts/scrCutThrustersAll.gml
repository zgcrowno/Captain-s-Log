script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Port"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Port#" + actionMap[? "Thrusters Port"]);
    actionMap[? "Thrusters Port"] = 0;
}
if(actionMap[? "Thrusters Starboard"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Star#" + actionMap[? "Thrusters Starboard"]);
    actionMap[? "Thrusters Starboard"] = 0;
}
if(actionMap[? "Thrusters Bow"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Bow#  " + actionMap[? "Thrusters Bow"]);
    actionMap[? "Thrusters Bow"] = 0;
}
if(actionMap[? "Thrusters Stern"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Stern#" + actionMap[? "Thrusters Stern"]);
    actionMap[? "Thrusters Stern"] = 0;
}
