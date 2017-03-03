scrSetState(initState);
if(actionMap[? util.actionMapThrustersPortString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString])));
    actionMap[? util.actionMapThrustersPortString] = 0;
}
if(actionMap[? util.actionMapThrustersStarboardString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString])));
    actionMap[? util.actionMapThrustersStarboardString] = 0;
}
if(actionMap[? util.actionMapThrustersBowString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString])));
    actionMap[? util.actionMapThrustersBowString] = 0;
}
if(actionMap[? util.actionMapThrustersSternString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString])));
    actionMap[? util.actionMapThrustersSternString] = 0;
}
