if(!(requiredPPShields > currentPP) && !shieldsStarboard) {
    shieldsStarboard = true;
    script_execute(scrWipeToInitState);
    currentPP -= requiredPPShields;
    currentPPShieldsStarboard += requiredPPShields;
} else if(shieldsStarboard) {
    script_execute(scrWipeToInitState);
} else {
    script_execute(scrWipeToInitState);
    //To Do: Error to user about lack of power...
}
