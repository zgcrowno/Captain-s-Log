scrSetState(initState);

if(actionMap[? util.actionMapActiveString]) {
    actionMap[? util.actionMapActiveString] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapActiveString));
    currentPPActive = 0;
}
