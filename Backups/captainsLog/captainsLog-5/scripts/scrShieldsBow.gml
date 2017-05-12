scrSetState(initState);

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsBowString] == active)) {
    show_debug_message(20);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
} else if(!(actionMap[? global.util.actionMapShieldsBowString] == active)) {
    //To Do: Error to user about lack of power...
}
