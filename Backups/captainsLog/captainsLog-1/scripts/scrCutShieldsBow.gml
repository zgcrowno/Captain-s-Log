scrSetState(initState);
if(actionMap[? util.actionMapShieldsBowString] == active) {
    actionMap[? util.actionMapShieldsBowString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsBowString);
} else if(actionMap[? util.actionMapShieldsBowString] == toActivate) {
    actionMap[? util.actionMapShieldsBowString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsBowString));
}
