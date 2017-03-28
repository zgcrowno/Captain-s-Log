scrSetState(initState);

if(actionMap[? util.actionMapThrustersBowString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString])));
    actionMap[? util.actionMapThrustersBowString] = 0;
}
