if(requiredPPPassive <= currentPP) {
    if(currentPPPassive == 0) {
        actionMap[? util.actionMapPassiveString] = toActivate;
        ds_list_add(actionQueue, util.actionMapPassiveString);
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrSetState, initState);
