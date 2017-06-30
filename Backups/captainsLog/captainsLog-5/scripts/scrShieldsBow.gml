if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && currentHPShieldsBow > 0) {
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
    show_debug_message("something");
} else if(!(actionMap[? global.util.actionMapShieldsBowString] == active) && currentHPShieldsBow > 0) {
    scrLog(global.util.warnPowerString);
    show_debug_message("something more");
} else if(!(actionMap[? global.util.actionMapShieldsBowString] == active)) {
    scrLog(global.util.warnShieldString);
    show_debug_message("something even more");
}
