scrSetState(initState);
if(actionMap[? util.actionMapThrustersCountString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString])));
    actionMap[? util.actionMapThrustersCountString] = 0;
}
