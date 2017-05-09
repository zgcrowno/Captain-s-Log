scrSetState(initState);

if(actionMap[? global.util.actionMapThrustersBowString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueThrustersBowString + string(actionMap[? global.util.actionMapThrustersBowString])));
    actionMap[? global.util.actionMapThrustersBowString] = 0;
}
