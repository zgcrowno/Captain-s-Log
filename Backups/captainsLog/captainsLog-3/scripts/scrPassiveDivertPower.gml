if(requiredPPPassive <= currentPP) {
    if(currentPPPassive == 0) {
        actionMap[? "Passive"] = true;
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
