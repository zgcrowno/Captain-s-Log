distance = argument0;

scrSetState(initState);

if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? global.util.actionMapThrustersClockString] > 0)) {
    actionMap[? global.util.actionMapThrustersClockString] = real(distance);
    ds_list_add(actionQueue, global.util.actionQueueThrustersClockString + string(distance));
} else if(actionMap[? global.util.actionMapThrustersClockString] > 0) {
    actionQueue[| real(actionQueue[| global.util.actionQueueThrustersClockString + string(actionMap[? global.util.actionMapThrustersClockString])])] = global.util.actionQueueThrustersClockString + string(actionMap[? global.util.actionMapThrustersClockString] + real(distance));
    actionMap[? global.util.actionMapThrustersClockString] = actionMap[? global.util.actionMapThrustersClockString] + real(distance);
} else {
    //To Do: Error to user about lack of power...
}
