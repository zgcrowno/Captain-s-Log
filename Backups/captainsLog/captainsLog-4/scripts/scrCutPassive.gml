scrSetState(initState);
if(actionMap[? util.actionMapPassiveString] == active) {
    actionMap[? util.actionMapPassiveString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutPassiveString);
} else if(actionMap[? util.actionMapPassiveString] == toActivate) {
    actionMap[? util.actionMapPassiveString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapPassiveString));
}
