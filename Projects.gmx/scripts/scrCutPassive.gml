if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(actionMap[? global.util.actionMapPassiveString] == active || actionMap[? global.util.actionMapPassiveString] == toActivate) {
    scrChangeStateAction(global.util.actionMapPassiveString, global.util.actionQueuePassiveString, global.util.actionQueueCutPassiveString);
}
