scrSetState(initState);

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
} else if(!(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    //To Do: Error to user about lack of power...
} 
