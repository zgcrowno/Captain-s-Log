scrSetState(initState);

if(actionMap[? util.actionMapShieldsPortString] == active) {
    actionMap[? util.actionMapShieldsPortString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsPortString);
} else if(actionMap[? util.actionMapShieldsPortString] == toActivate) {
    actionMap[? util.actionMapShieldsPortString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsPortString));
}
