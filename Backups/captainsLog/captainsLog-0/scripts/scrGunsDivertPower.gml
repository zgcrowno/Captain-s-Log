if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(requiredPPGuns <= currentPP) {
    scrChangeStateAction(global.util.actionMapGunsString, noone, noone);
} else {
    scrLog(global.util.warnPowerString);
}
