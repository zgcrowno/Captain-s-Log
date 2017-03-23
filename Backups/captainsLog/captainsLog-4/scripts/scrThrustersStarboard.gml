distance = argument0;
if(!(requiredPPThrusters > currentPP) && !(actionMap[? util.actionMapThrustersStarboardString] > 0) && currentHPThrustersStarboard > 0) {
    actionMap[? util.actionMapThrustersStarboardString] = real(distance);
    ds_list_add(actionQueue, util.actionQueueThrustersStarboardString + string(distance));
} else if(actionMap[? util.actionMapThrustersPortString] > 0 && currentHPThrustersStarboard > 0) {
    actionQueue[| real(actionQueue[| util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString])])] = util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString] + real(distance));
    actionMap[? util.actionMapThrustersStarboardString] = actionMap[? util.actionMapThrustersStarboardString] + real(distance);
} else {
    //To Do: Error to user about lack of power and/or thrusters health
}
scrSetState(initState);
