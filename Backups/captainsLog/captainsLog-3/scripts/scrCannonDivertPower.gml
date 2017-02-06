if(requiredPPCannon <= currentPP) {
    if(currentPPCannon == 0) {
        actionMap[? "Cannon"] = true;
        ds_list_add(actionQueue, "Cannon");
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
