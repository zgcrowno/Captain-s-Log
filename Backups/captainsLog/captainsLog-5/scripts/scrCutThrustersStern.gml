scrSetState(initState);

if(actionMap[? global.util.actionMapThrustersSternString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueThrustersSternString + string(actionMap[? global.util.actionMapThrustersSternString])));
    actionMap[? global.util.actionMapThrustersSternString] = 0;
}
