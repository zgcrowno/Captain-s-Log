script_execute(scrWipeToInitState);
if(actionMap[? "Shields Port"] == active) {
    actionMap[? "Shields Port"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Port");
} else if(actionMap[? "Shields Port"] == toActivate) {
    actionMap[? "Shields Port"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Port"));
}
if(actionMap[? "Shields Starboard"] == active) {
    actionMap[? "Shields Starboard"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Starboard");
} else if(actionMap[? "Shields Starboard"] == toActivate) {
    actionMap[? "Shields Starboard"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Starboard"));
}
if(actionMap[? "Shields Bow"] == active) {
    actionMap[? "Shields Bow"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Bow");
} else if(actionMap[? "Shields Bow"] == toActivate) {
    actionMap[? "Shields Bow"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Bow"));
}
if(actionMap[? "Shields Stern"] == active) {
    actionMap[? "Shields Stern"] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Stern");
} else if(actionMap[? "Shields Stern"] == toActivate) {
    actionMap[? "Shields Stern"] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Stern"));
}
