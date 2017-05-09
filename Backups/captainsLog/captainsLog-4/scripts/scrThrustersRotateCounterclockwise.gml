distance = argument0;

scrSetState(initState);

if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? global.util.actionMapThrustersCountString] > 0)) {
    actionMap[? global.util.actionMapThrustersCountString] = real(distance);
    ds_list_add(actionQueue, global.util.actionQueueThrustersCountString + string(distance));
} else if(actionMap[? global.util.actionMapThrustersCountString] > 0) {
    actionQueue[| real(actionQueue[| global.util.actionQueueThrustersCountString + string(actionMap[? global.util.actionMapThrustersCountString])])] = global.util.actionQueueThrustersCountString + string(actionMap[? global.util.actionMapThrustersCountString] + real(distance));
    actionMap[? global.util.actionMapThrustersCountString] = actionMap[? global.util.actionMapThrustersCountString] + real(distance);
} else {
    //To Do: Error to user about lack of power...
}
