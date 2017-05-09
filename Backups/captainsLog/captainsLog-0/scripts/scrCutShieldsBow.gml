scrSetState(initState);

if(actionMap[? global.util.actionMapShieldsBowString] == active) {
    actionMap[? global.util.actionMapShieldsBowString] = toDeactivate;
    ds_list_add(actionQueue, global.util.actionQueueCutShieldsBowString);
} else if(actionMap[? global.util.actionMapShieldsBowString] == toActivate) {
    actionMap[? global.util.actionMapShieldsBowString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueShieldsBowString));
}
