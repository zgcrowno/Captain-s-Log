scrSetState(initState);

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active)) {
    show_debug_message(22);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
} else if(!(actionMap[? global.util.actionMapShieldsStarboardString] == active)) {
    //To Do: Error to user about lack of power...
}
