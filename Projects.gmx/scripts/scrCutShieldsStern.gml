scrSetState(initState);

if(actionMap[? util.actionMapShieldsSternString] == active) {
    actionMap[? util.actionMapShieldsSternString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsSternString);
} else if(actionMap[? util.actionMapShieldsSternString] == toActivate) {
    actionMap[? util.actionMapShieldsSternString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsSternString));
}
