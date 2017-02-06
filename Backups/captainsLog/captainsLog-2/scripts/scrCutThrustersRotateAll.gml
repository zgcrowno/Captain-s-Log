script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Clock"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Clock#" + actionMap[? "Thrusters Clock"]);
    actionMap[? "Thrusters Clock"] = 0;
}
if(actionMap[? "Thrusters Count"] > 0) {
    ds_list_delete(actionQueue, "Thrst#Count#" + actionMap[? "Thrusters Count"]);
    actionMap[? "Thrusters Count"] = 0;
}
