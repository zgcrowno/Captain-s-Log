scrSetState(initState);

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsSternString);
} else if(!(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    //To Do: Error to user about lack of power...
} 
