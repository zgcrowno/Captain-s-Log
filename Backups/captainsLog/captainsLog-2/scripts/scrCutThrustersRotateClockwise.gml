scrSetState(initState);

if(actionMap[? global.util.actionMapThrustersClockString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueThrustersClockString + string(actionMap[? global.util.actionMapThrustersClockString])));
    actionMap[? global.util.actionMapThrustersClockString] = 0;
}
