if(requiredPPActive <= currentPP) {
    if(currentPPActive == 0) {
        actionMap[? "Active"] = true;
    } else {
        //To Do: Error to user about cooldown...
    }
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
