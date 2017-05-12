scrSetState(initState);

if(actionMap[? global.util.actionMapShieldsStarboardString] == active || actionMap[? global.util.actionMapShieldsStarboardString] == toActivate) {
    show_debug_message(3);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
}
