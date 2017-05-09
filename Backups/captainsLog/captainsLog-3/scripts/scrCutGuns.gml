scrSetState(initState);

if(actionMap[? global.util.actionMapGunsString]) {
    actionMap[? global.util.actionMapGunsString] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionMapGunsString));
}
