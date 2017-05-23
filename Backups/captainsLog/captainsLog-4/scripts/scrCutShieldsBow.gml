if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(actionMap[? global.util.actionMapShieldsBowString] == active || actionMap[? global.util.actionMapShieldsBowString] == toActivate) {
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
}
