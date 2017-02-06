script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Stern"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Stern#" + actionMap[? "Thrusters Stern"]);
    actionMap[? "Thrusters Stern"] = 0;
}
