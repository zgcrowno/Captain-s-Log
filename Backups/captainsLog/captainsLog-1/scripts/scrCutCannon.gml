scrSetState(initState);

if(actionMap[? global.util.actionMapCannonString]) {
    actionMap[? global.util.actionMapCannonString] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionMapCannonString));
    currentPPCannon = 0;
}
