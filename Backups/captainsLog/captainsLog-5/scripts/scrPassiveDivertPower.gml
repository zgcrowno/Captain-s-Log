if(requiredPPPassive <= currentPP) {
    if(currentPPPassive == 0) {
        actionMap[? "Passive"] = toActivate;
        ds_list_add(actionQueue, "Passive");
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
