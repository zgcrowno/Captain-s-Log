if(!(requiredPPShields > currentPP) && !(actionMap[? util.actionMapShieldsPortString] == active)) {
    actionMap[? util.actionMapShieldsPortString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsPortString);
} else if(!(actionMap[? util.actionMapShieldsPortString] == active)) {
    //To Do: Error to user about lack of power...
} 
scrSetState(initState);
