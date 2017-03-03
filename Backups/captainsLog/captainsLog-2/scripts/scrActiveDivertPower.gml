if(requiredPPActive <= currentPP) {
    if(currentPPActive == 0) {
        actionMap[? util.actionMapActiveString] = true;
        ds_list_add(actionQueue, util.actionMapActiveString);
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
scrSetState(initState);
