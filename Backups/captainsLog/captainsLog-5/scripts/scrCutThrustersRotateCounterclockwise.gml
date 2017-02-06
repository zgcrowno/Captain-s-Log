script_execute(scrWipeToInitState);
if(actionMap[? "Thrusters Count"] > 0) {
ds_list_delete(actionQueue, "Thrst#Count#" + actionMap[? "Thrusters Count"]);
    actionMap[? "Thrusters Count"] = 0;
}
