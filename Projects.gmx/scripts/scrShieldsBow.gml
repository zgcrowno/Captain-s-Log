scrSetState(initState);

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsBowString] == active)) {
    actionMap[? global.util.actionMapShieldsBowString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsBowString);
} else if(!(actionMap[? global.util.actionMapShieldsBowString] == active)) {
    //To Do: Error to user about lack of power...
}
