script_execute(scrWipeToInitState);
if(actionMap[? "Shields Stern"] == active) {
    actionMap[? "Shields Stern"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Stern");
} else if(actionMap[? "Shields Stern"] == toActivate) {
    actionMap[? "Shields Stern"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Stern"));
}
