if(!(requiredPPShields > currentPP) && !(actionMap[? util.actionMapShieldsBowString] == active)) {
    actionMap[? util.actionMapShieldsBowString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsBowString);
} else if(!(actionMap[? util.actionMapShieldsBowString] == active)) {
    //To Do: Error to user about lack of power...
}
scrSetState(initState);
