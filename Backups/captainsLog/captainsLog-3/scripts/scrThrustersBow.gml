distance = argument0;

scrSetState(initState);
if(!(requiredPPThrusters > currentPP) && !(actionMap[? global.util.actionMapThrustersBowString] > 0) && currentHPThrustersBow > 0) {
    actionMap[? global.util.actionMapThrustersBowString] = real(distance);
    ds_list_add(actionQueue, global.util.actionQueueThrustersBowString + string(distance));
} else if(actionMap[? global.util.actionMapThrustersBowString] > 0 && currentHPThrustersBow > 0) {
    actionQueue[| real(actionQueue[| global.util.actionQueueThrustersBowString + string(actionMap[? global.util.actionMapThrustersBowString])])] = global.util.actionQueueThrustersBowString + string(actionMap[? global.util.actionMapThrustersBowString] + real(distance));
    actionMap[? global.util.actionMapThrustersBowString] = actionMap[? global.util.actionMapThrustersBowString] + real(distance);
} else {
        //To Do: Error to user about lack of power and/or thrusters health
}
