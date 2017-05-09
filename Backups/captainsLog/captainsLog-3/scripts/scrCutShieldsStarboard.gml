scrSetState(initState);

if(actionMap[? global.util.actionMapShieldsStarboardString] == active) {
    actionMap[? global.util.actionMapShieldsStarboardString] = toDeactivate;
    ds_list_add(actionQueue, global.util.actionQueueCutShieldsStarboardString);
} else if(actionMap[? global.util.actionMapShieldsStarboardString] == toActivate) {
    actionMap[? global.util.actionMapShieldsStarboardString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueShieldsStarboardString));
}
