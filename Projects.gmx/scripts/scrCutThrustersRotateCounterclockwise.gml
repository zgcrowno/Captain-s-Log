scrSetState(initState);

if(actionMap[? global.util.actionMapThrustersCountString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueThrustersCountString + string(actionMap[? global.util.actionMapThrustersCountString])));
    actionMap[? global.util.actionMapThrustersCountString] = 0;
}
