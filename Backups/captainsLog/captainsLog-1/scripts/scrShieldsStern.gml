if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
} else if(!(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    scrLog(global.util.warnPowerString);
} 
