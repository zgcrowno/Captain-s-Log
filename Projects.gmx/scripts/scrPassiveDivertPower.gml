if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(requiredPPPassive <= currentPP) {
    if(currentPPPassive == 0) {
        if(object_index != objHalitosis || sprite_index == sprHalitosis) {
            scrChangeStateAction(global.util.actionMapPassiveString, global.util.actionQueuePassiveString, global.util.actionQueueCutPassiveString);
        } else {
            scrLog(global.util.warnShipFormString);
        }
    } else {
        scrLog(global.util.warnCooldownString);
    }
} else {
    scrLog(global.util.warnPowerString);
}
