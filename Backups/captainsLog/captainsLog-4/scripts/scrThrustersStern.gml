if(input != "") {
    if(!(requiredPPThrusters > currentPP) && !(actionMap[? util.actionMapThrustersSternString] > 0)) {
        actionMap[? util.actionMapThrustersSternString] = real(input);
        ds_list_add(actionQueue, util.actionQueueThrustersSternString + input);
    } else if(thrustersStern) {
        actionQueue[| real(actionQueue[| util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString])])] = util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString] + real(input));
        actionMap[? util.actionMapThrustersSternString] = actionMap[? util.actionMapThrustersSternString] + real(input);
    } else {
        //To Do: Error to user about lack of power
    }
} else {
    //To Do: Error to user about improper input
}
scrSetState(initState);
