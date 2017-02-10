script_execute(scrSetState, initState);
if(actionMap[? util.actionMapThrustersClockString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString])));
    actionMap[? util.actionMapThrustersClockString] = 0;
}
