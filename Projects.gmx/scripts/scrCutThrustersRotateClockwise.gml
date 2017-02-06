script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Clock"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Clock#" + actionMap[? "Thrusters Clock"]);
    actionMap[? "Thrusters Clock"] = 0;
}
