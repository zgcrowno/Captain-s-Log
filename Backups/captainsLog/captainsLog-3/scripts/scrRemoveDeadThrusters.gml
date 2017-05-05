if(currentHPThrustersPort <= 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString])));
    actionMap[? util.actionMapThrustersPortString] = 0;
}
if(currentHPThrustersStarboard <= 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString])));
    actionMap[? util.actionMapThrustersStarboardString] = 0;
}
if(currentHPThrustersBow <= 0) {
    show_debug_message("something");
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString])));
    actionMap[? util.actionMapThrustersBowString] = 0;
}
if(currentHPThrustersStern <= 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString])));
    actionMap[? util.actionMapThrustersSternString] = 0;
}
