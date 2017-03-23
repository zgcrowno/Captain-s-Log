distance = argument0;
if(!(requiredPPThrusters > currentPP) && !(actionMap[? util.actionMapThrustersBowString] > 0) && currentHPThrustersBow > 0) {
    actionMap[? util.actionMapThrustersBowString] = real(distance);
    ds_list_add(actionQueue, util.actionQueueThrustersBowString + string(distance));
} else if(actionMap[? util.actionMapThrustersBowString] > 0 && currentHPThrustersBow > 0) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString])])] = util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString] + real(distance));
    actionMap[? util.actionMapThrustersBowString] = actionMap[? util.actionMapThrustersBowString] + real(distance);
} else {
        //To Do: Error to user about lack of power and/or thrusters health
}
scrSetState(initState);
