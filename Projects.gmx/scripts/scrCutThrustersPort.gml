script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Port"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Port#" + actionMap[? "Thrusters Port"]);
    actionMap[? "Thrusters Port"] = 0;
}
