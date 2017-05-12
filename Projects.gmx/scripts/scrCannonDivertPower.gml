if(requiredPPCannon <= currentPP) {
    if(currentPPCannon == 0) {
        scrChangeStateAction(global.util.actionMapCannonString, noone, noone);
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
scrSetState(initState);
