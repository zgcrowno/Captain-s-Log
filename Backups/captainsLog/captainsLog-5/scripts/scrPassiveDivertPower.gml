scrSetState(initState);

if(requiredPPPassive <= currentPP) {
    if(currentPPPassive == 0) {
        if(object_index != objHalitosis || sprite_index == sprHalitosis) {
            actionMap[? util.actionMapPassiveString] = toActivate;
            ds_list_add(actionQueue, util.actionMapPassiveString);
        } else {
            //TODO: Error to user about ship form
        }
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
