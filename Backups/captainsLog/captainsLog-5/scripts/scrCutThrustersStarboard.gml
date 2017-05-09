scrSetState(initState);

if(actionMap[? global.util.actionMapThrustersStarboardString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueThrustersStarboardString + string(actionMap[? global.util.actionMapThrustersStarboardString])));
    actionMap[? global.util.actionMapThrustersStarboardString] = 0;
}
