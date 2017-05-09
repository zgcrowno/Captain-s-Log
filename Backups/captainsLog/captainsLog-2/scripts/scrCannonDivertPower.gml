if(requiredPPCannon <= currentPP) {
    if(currentPPCannon == 0) {
        actionMap[? global.util.actionMapCannonString] = true;
        ds_list_add(actionQueue, global.util.actionMapCannonString);
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
scrSetState(initState);
