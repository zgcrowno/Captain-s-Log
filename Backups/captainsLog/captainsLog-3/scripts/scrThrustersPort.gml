distance = argument0;
if(!(requiredPPThrusters > currentPP) && !(actionMap[? util.actionMapThrustersPortString] > 0)) {
    actionMap[? util.actionMapThrustersPortString] = real(distance);
    ds_list_add(actionQueue, util.actionQueueThrustersPortString + string(distance));
} else if(actionMap[? util.actionMapThrustersPortString] > 0) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString])])] = util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString] + real(distance));
    actionMap[? util.actionMapThrustersPortString] = actionMap[? util.actionMapThrustersPortString] + real(distance);
} else {
        //To Do: Error to user about lack of power
}
scrSetState(initState);
