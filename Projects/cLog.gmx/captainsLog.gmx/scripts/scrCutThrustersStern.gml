scrSetState(initState);

if(actionMap[? util.actionMapThrustersSternString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString])));
    actionMap[? util.actionMapThrustersSternString] = 0;
}
