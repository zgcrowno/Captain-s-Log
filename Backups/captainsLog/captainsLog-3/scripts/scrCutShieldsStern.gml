if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(actionMap[? global.util.actionMapShieldsSternString] == active || actionMap[? global.util.actionMapShieldsSternString] == toActivate) {
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
}
