if(!(requiredPPShields > currentPP) && !shieldsStarboard) {
    actionMap[? "Shields Starboard"] = true;
    shieldsStarboard = true;
    currentPP -= requiredPPShields;
    currentPPShieldsStarboard += requiredPPShields;
} else if(!shieldsStarboard) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
