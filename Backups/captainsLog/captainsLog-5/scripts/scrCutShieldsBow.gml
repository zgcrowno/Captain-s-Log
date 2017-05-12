scrSetState(initState);
if(actionMap[? global.util.actionMapShieldsBowString] == active || actionMap[? global.util.actionMapShieldsBowString] == toActivate) {
    show_debug_message(1);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
}
