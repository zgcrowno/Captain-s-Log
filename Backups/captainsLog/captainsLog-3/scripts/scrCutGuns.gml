if(actionMap[? util.actionMapGunsString]) {
    actionMap[? util.actionMapGunsString] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapGunsString));
}
script_execute(scrSetState, initState);
