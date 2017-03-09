if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? util.actionMapThrustersClockString] > 0)) {
    actionMap[? util.actionMapThrustersClockString] = real(input);
    ds_list_add(actionQueue, util.actionQueueThrustersClockString + input);
} else if(actionMap[? util.actionMapThrustersClockString] > 0) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString])])] = util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString] + real(input));
    actionMap[? util.actionMapThrustersClockString] = actionMap[? util.actionMapThrustersClockString] + real(input);
} else {
    //To Do: Error to user about lack of power...
}
scrSetState(initState);
