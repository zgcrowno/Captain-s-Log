scrSetState(initState);

if(requiredPPPassive <= currentPP) {
    if(currentPPPassive == 0) {
        if(object_index != objHalitosis || sprite_index == sprHalitosis) {
            scrChangeStateAction(global.util.actionMapPassiveString, global.util.actionQueuePassiveString, global.util.actionQueueCutPassiveString);
        } else {
            //TODO: Error to user about ship form
        }
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
