if(!(requiredPPThrusters > currentPP) && !(actionMap[? util.actionMapThrustersPortString] > 0)) {
    actionMap[? util.actionMapThrustersPortString] = real(input);
    ds_list_add(actionQueue, util.actionQueueThrustersPortString + input);
} else if(actionMap[? util.actionMapThrustersPortString] > 0) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString])])] = util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString] + real(input));
    actionMap[? util.actionMapThrustersPortString] = actionMap[? util.actionMapThrustersPortString] + real(input);
} else {
        //To Do: Error to user about lack of power
}
scrSetState(initState);
