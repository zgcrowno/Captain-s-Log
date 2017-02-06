script_execute(scrWipeToInitState);
if(actionMap[? "Shields Bow"] == active) {
    actionMap[? "Shields Bow"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Bow");
} else if(actionMap[? "Shields Bow"] == toActivate) {
    actionMap[? "Shields Bow"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Bow"));
}
