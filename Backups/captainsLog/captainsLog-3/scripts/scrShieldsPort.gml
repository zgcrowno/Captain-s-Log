scrSetState(initState);

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active)) {
    actionMap[? global.util.actionMapShieldsPortString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsPortString);
} else if(!(actionMap[? global.util.actionMapShieldsPortString] == active)) {
    //To Do: Error to user about lack of power...
} 
