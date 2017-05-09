scrSetState(initState);

if(actionMap[? global.util.actionMapPassiveString] == active) {
    actionMap[? global.util.actionMapPassiveString] = toDeactivate;
    ds_list_add(actionQueue, global.util.actionQueueCutPassiveString);
} else if(actionMap[? global.util.actionMapPassiveString] == toActivate) {
    actionMap[? global.util.actionMapPassiveString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionMapPassiveString));
}
