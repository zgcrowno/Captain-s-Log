if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(actionMap[? global.util.actionMapShieldsPortString] == active || actionMap[? global.util.actionMapShieldsPortString] == toActivate) {
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
}
