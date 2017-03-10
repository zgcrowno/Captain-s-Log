distance = argument0;
if(!(requiredPPThrusters > currentPP) && !(actionMap[? util.actionMapThrustersSternString] > 0)) {
    actionMap[? util.actionMapThrustersSternString] = real(distance);
    ds_list_add(actionQueue, util.actionQueueThrustersSternString + string(distance));
} else if(thrustersStern) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString])])] = util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString] + real(distance));
    actionMap[? util.actionMapThrustersSternString] = actionMap[? util.actionMapThrustersSternString] + real(distance);
} else {
    //To Do: Error to user about lack of power
}
scrSetState(initState);
