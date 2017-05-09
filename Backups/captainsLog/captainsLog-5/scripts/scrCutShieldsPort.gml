scrSetState(initState);

if(actionMap[? global.util.actionMapShieldsPortString] == active) {
    actionMap[? global.util.actionMapShieldsPortString] = toDeactivate;
    ds_list_add(actionQueue, global.util.actionQueueCutShieldsPortString);
} else if(actionMap[? global.util.actionMapShieldsPortString] == toActivate) {
    actionMap[? global.util.actionMapShieldsPortString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueShieldsPortString));
}
