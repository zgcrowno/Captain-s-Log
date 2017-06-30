if(requiredPPCannon <= currentPP) {
    if(currentPPCannon == 0) {
        scrChangeStateAction(global.util.actionMapCannonString, noone, noone);
    } else {
        scrLog(global.util.warnCooldownString);
    }
} else {
    scrLog(global.util.warnPowerString);
}
if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}
