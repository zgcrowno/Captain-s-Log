if(actionMap[? "Passive"] == toActivate) {
    actionMap[? "Passive"] = active;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Passive"));
} else if(actionMap[? "Passive"] == toDeactivate) {
    actionMap[? "Passive"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Cut#Passive"));
}
