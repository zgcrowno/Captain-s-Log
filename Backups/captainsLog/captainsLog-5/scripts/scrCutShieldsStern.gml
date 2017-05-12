scrSetState(initState);

if(actionMap[? global.util.actionMapShieldsSternString] == active || actionMap[? global.util.actionMapShieldsSternString] == toActivate) {
    show_debug_message(4);
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
}
