scrSetState(initState);

if(actionMap[? global.util.actionMapShieldsSternString] == active) {
    actionMap[? global.util.actionMapShieldsSternString] = toDeactivate;
    ds_list_add(actionQueue, global.util.actionQueueCutShieldsSternString);
} else if(actionMap[? global.util.actionMapShieldsSternString] == toActivate) {
    actionMap[? global.util.actionMapShieldsSternString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueShieldsSternString));
}
