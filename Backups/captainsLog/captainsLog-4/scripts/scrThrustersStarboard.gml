distance = argument0;

scrSetState(initState);

if(!(requiredPPThrusters > currentPP) && !(actionMap[? global.util.actionMapThrustersStarboardString] > 0) && currentHPThrustersStarboard > 0) {
    actionMap[? global.util.actionMapThrustersStarboardString] = real(distance);
    ds_list_add(actionQueue, global.util.actionQueueThrustersStarboardString + string(distance));
} else if(actionMap[? global.util.actionMapThrustersPortString] > 0 && currentHPThrustersStarboard > 0) {
    actionQueue[| real(actionQueue[| global.util.actionQueueThrustersStarboardString + string(actionMap[? global.util.actionMapThrustersStarboardString])])] = global.util.actionQueueThrustersStarboardString + string(actionMap[? global.util.actionMapThrustersStarboardString] + real(distance));
    actionMap[? global.util.actionMapThrustersStarboardString] = actionMap[? global.util.actionMapThrustersStarboardString] + real(distance);
} else {
    //To Do: Error to user about lack of power and/or thrusters health
}
