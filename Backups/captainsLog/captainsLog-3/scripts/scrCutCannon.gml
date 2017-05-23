if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(actionMap[? global.util.actionMapCannonString]) {
    scrChangeStateAction(global.util.actionMapCannonString, noone, noone);
    currentPPCannon = 0; //Reassign currentPPCannon here because of cooldown
}
