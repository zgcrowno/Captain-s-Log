if(!(requiredPPThrusters > currentPP) && !(actionMap[? util.actionMapThrustersStarboardString] > 0)) {
    actionMap[? util.actionMapThrustersStarboardString] = real(input);
    ds_list_add(actionQueue, util.actionQueueThrustersStarboardString + input);
} else if(actionMap[? util.actionMapThrustersPortString] > 0) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString])])] = util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString] + real(input));
    actionMap[? util.actionMapThrustersStarboardString] = actionMap[? util.actionMapThrustersStarboardString] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrSetState, initState);
