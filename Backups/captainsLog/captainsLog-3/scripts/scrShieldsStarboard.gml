script_execute(scrWipeToInitState);
if(!(requiredPPShields > currentPP) && !shieldsStarboard) {
    shieldsStarboard = true;
    currentPP -= requiredPPShields;
    currentPPShieldsStarboard += requiredPPShields;
} else if(!shieldsStarboard) {
    //To Do: Error to user about lack of power...
}
