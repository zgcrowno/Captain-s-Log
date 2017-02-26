if(actionMap[? util.actionMapThrustersStarboardString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString])));
    actionMap[? util.actionMapThrustersStarboardString] = 0;
}
scrSetState(initState);
