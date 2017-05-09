scrSetState(initState);

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active)) {
    actionMap[? global.util.actionMapShieldsStarboardString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsStarboardString);
} else if(!(actionMap[? global.util.actionMapShieldsStarboardString] == active)) {
    //To Do: Error to user about lack of power...
}
