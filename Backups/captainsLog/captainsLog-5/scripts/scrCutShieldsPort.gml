scrSetState(initState);

if(actionMap[? global.util.actionMapShieldsPortString] == active || actionMap[? global.util.actionMapShieldsPortString] == toActivate) {
    show_debug_message(2);
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
}
