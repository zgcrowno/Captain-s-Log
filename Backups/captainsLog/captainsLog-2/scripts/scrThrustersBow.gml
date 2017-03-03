if(!(requiredPPThrusters > currentPP) && !(actionMap[? util.actionMapThrustersBowString] > 0)) {
    actionMap[? util.actionMapThrustersBowString] = real(input);
    ds_list_add(actionQueue, util.actionQueueThrustersBowString + input);
} else if(actionMap[? util.actionMapThrustersBowString] > 0) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString])])] = util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString] + real(input));
    actionMap[? util.actionMapThrustersBowString] = actionMap[? util.actionMapThrustersBowString] + real(input);
} else {
    //To Do: Error to user about lack of power
}
scrSetState(initState);
