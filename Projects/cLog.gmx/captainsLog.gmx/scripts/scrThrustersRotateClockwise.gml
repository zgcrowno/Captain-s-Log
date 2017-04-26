distance = argument0;

scrSetState(initState);

if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? util.actionMapThrustersClockString] > 0)) {
    actionMap[? util.actionMapThrustersClockString] = real(distance);
    ds_list_add(actionQueue, util.actionQueueThrustersClockString + string(distance));
} else if(actionMap[? util.actionMapThrustersClockString] > 0) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString])])] = util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString] + real(distance));
    actionMap[? util.actionMapThrustersClockString] = actionMap[? util.actionMapThrustersClockString] + real(distance);
} else {
    //To Do: Error to user about lack of power...
}
