script_execute(scrSetState, initState);
if(actionMap[? util.actionMapShieldsStarboardString] == active) {
    actionMap[? util.actionMapShieldsStarboardString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsStarboardString);
} else if(actionMap[? util.actionMapShieldsStarboardString] == toActivate) {
    actionMap[? util.actionMapShieldsStarboardString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsStarboardString));
}
