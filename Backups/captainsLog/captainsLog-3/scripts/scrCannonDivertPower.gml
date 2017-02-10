if(requiredPPCannon <= currentPP) {
    if(currentPPCannon == 0) {
        actionMap[? util.actionMapCannonString] = true;
        ds_list_add(actionQueue, util.actionMapCannonString);
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrSetState, initState);
