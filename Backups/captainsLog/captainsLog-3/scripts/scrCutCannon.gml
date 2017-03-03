scrSetState(initState);
if(actionMap[? util.actionMapCannonString]) {
    actionMap[? util.actionMapCannonString] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapCannonString));
    currentPPCannon = 0;
}
