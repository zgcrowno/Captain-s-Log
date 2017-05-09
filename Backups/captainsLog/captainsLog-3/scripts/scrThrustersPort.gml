distance = argument0;

scrSetState(initState);

if(!(requiredPPThrusters > currentPP) && !(actionMap[? global.util.actionMapThrustersPortString] > 0) && currentHPThrustersPort > 0) {
    actionMap[? global.util.actionMapThrustersPortString] = real(distance);
    ds_list_add(actionQueue, global.util.actionQueueThrustersPortString + string(distance));
} else if(actionMap[? global.util.actionMapThrustersPortString] > 0 && currentHPThrustersPort > 0) {
    actionQueue[| real(actionQueue[| global.util.actionQueueThrustersPortString + string(actionMap[? global.util.actionMapThrustersPortString])])] = global.util.actionQueueThrustersPortString + string(actionMap[? global.util.actionMapThrustersPortString] + real(distance));
    actionMap[? global.util.actionMapThrustersPortString] = actionMap[? global.util.actionMapThrustersPortString] + real(distance);
} else {
        //To Do: Error to user about lack of power and/or thrusters health
}
