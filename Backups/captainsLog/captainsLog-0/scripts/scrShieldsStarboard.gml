scrSetState(initState);

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active)) {
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
} else if(!(actionMap[? global.util.actionMapShieldsStarboardString] == active)) {
    //To Do: Error to user about lack of power...
}
