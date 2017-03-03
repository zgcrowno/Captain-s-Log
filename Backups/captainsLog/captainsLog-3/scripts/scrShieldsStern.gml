if(!(requiredPPShields > currentPP) && !(actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsSternString);
} else if(!(actionMap[? util.actionMapShieldsSternString] == active)) {
    //To Do: Error to user about lack of power...
} 
scrSetState(initState);
