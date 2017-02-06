if(actionMap[? "Thrusters Bow"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Bow#" + actionMap[? "Thrusters Bow"]);
    actionMap[? "Thrusters Bow"] = 0;
}
script_execute(scrWipeToInitState);
