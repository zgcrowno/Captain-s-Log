if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active)) {
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
} else if(!(actionMap[? global.util.actionMapShieldsStarboardString] == active)) {
    scrLog(global.util.warnPowerString);
}
