script_execute(scrWipeToInitState);
if(actionMap[? "Passive"] == active) {
    actionMap[? "Passive"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Passive");
} else if(actionMap[? "Passive"] == toActivate) {
    actionMap[? "Passive"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Passive"));
}
