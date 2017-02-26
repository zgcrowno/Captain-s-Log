if(!(requiredPPShields > currentPP) && !(actionMap[? util.actionMapShieldsStarboardString] == active)) {
    actionMap[? util.actionMapShieldsStarboardString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsStarboardString);
} else if(!(actionMap[? util.actionMapShieldsStarboardString] == active)) {
    //To Do: Error to user about lack of power...
}
scrSetState(initState);
