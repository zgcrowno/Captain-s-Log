distance = argument0;

scrSetState(initState);

if(!(requiredPPThrusters > currentPP) && !(actionMap[? global.util.actionMapThrustersSternString] > 0) && currentHPThrustersStern > 0) {
    actionMap[? global.util.actionMapThrustersSternString] = real(distance);
    ds_list_add(actionQueue, global.util.actionQueueThrustersSternString + string(distance));
} else if(actionMap[? global.util.actionMapThrustersSternString] > 0 && currentHPThrustersStern > 0) {
    actionQueue[| real(actionQueue[| global.util.actionQueueThrustersSternString + string(actionMap[? global.util.actionMapThrustersSternString])])] = global.util.actionQueueThrustersSternString + string(actionMap[? global.util.actionMapThrustersSternString] + real(distance));
    actionMap[? global.util.actionMapThrustersSternString] = actionMap[? global.util.actionMapThrustersSternString] + real(distance);
} else {
    //To Do: Error to user about lack of power and/or thrusters health
}
