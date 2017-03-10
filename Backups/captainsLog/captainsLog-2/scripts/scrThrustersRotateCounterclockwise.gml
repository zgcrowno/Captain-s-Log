distance = argument0;
if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? util.actionMapThrustersCountString] > 0)) {
    actionMap[? util.actionMapThrustersCountString] = real(distance);
    ds_list_add(actionQueue, util.actionQueueThrustersCountString + string(distance));
} else if(actionMap[? util.actionMapThrustersCountString] > 0) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString])])] = util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString] + real(distance));
    actionMap[? util.actionMapThrustersCountString] = actionMap[? util.actionMapThrustersCountString] + real(distance);
} else {
    //To Do: Error to user about lack of power...
}
scrSetState(initState);
