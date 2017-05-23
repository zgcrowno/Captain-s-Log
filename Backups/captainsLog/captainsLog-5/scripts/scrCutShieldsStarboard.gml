if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(actionMap[? global.util.actionMapShieldsStarboardString] == active || actionMap[? global.util.actionMapShieldsStarboardString] == toActivate) {
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
}
