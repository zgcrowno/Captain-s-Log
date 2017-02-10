script_execute(scrSetState, initState);
if(actionMap[? util.actionMapShieldsPortString] == active) {
    actionMap[? util.actionMapShieldsPortString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsPortString);
} else if(actionMap[? util.actionMapShieldsPortString] == toActivate) {
    actionMap[? util.actionMapShieldsPortString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsPortString));
}
if(actionMap[? util.actionMapShieldsStarboardString] == active) {
    actionMap[? util.actionMapShieldsStarboardString] = toDeactivate;
    ds_list_add(actionQueue, "Cut#Shields#Starboard");
} else if(actionMap[? util.actionMapShieldsStarboardString] == toActivate) {
    actionMap[? util.actionMapShieldsStarboardString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Shields#Starboard"));
}
if(actionMap[? util.actionMapShieldsBowString] == active) {
    actionMap[? util.actionMapShieldsBowString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsBowString);
} else if(actionMap[? util.actionMapShieldsBowString] == toActivate) {
    actionMap[? util.actionMapShieldsBowString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsBowString));
}
if(actionMap[? util.actionMapShieldsSternString] == active) {
    actionMap[? util.actionMapShieldsSternString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsSternString);
} else if(actionMap[? util.actionMapShieldsSternString] == toActivate) {
    actionMap[? util.actionMapShieldsSternString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsSternString));
}
