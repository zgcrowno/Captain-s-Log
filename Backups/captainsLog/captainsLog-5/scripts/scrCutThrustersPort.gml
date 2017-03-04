scrSetState(initState);
if(actionMap[? util.actionMapThrustersPortString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString])));
    actionMap[? util.actionMapThrustersPortString] = 0;
}
