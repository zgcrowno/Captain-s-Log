if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? util.actionMapThrustersCountString] > 0)) {
    actionMap[? util.actionMapThrustersCountString] = real(input);
    ds_list_add(actionQueue, util.actionQueueThrustersCountString + input);
} else if(actionMap[? util.actionMapThrustersCountString] > 0) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString])])] = util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString] + real(input));
    actionMap[? util.actionMapThrustersCountString] = actionMap[? util.actionMapThrustersCountString] + real(input);
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrSetState, initState);
