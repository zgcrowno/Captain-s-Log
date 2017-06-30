if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsBowString] == active)) {
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
} else if(!(actionMap[? global.util.actionMapShieldsBowString] == active)) {
    scrLog(global.util.warnPowerString);
}
