if(!(requiredPPShields > currentPP) && !shieldsPort) {
    shieldsPort = true;
    script_execute(scrWipeToInitState);
    currentPP -= requiredPPShields;
    currentPPShieldsPort += requiredPPShields;
} else if(shieldsPort) {
    script_execute(scrWipeToInitState);
} else {
    script_execute(scrWipeToInitState);
    //To Do: Error to user about lack of power...
}
