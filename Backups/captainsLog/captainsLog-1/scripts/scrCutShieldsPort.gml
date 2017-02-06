script_execute(scrWipeToInitState);
if(actionMap[? "Shields Port"] == active) {
    actionMap[? "Shields Port"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Port");
} else if(actionMap[? "Shields Port"] == toActivate) {
    actionMap[? "Shields Port"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Port"));
}
