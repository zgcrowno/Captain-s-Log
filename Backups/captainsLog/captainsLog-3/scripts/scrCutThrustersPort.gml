scrSetState(initState);

if(actionMap[? global.util.actionMapThrustersPortString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueThrustersPortString + string(actionMap[? global.util.actionMapThrustersPortString])));
    actionMap[? global.util.actionMapThrustersPortString] = 0;
}
