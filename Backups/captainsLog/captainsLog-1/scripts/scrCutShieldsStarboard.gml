script_execute(scrWipeToInitState);
if(actionMap[? "Shields Starboard"] == active) {
    actionMap[? "Shields Starboard"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Star");
} else if(actionMap[? "Shields Starboard"] == toActivate) {
    actionMap[? "Shields Starboard"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Star"));
}
