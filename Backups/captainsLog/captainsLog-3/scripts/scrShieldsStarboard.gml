if(!(requiredPPShields > currentPP) && !shieldsStarboard) {
    shieldsStarboard = true;
    currentState = initState;
    input = "";
    currentPP -= requiredPPShields;
    currentPPShieldsStarboard += requiredPPShields;
} else if(shieldsStarboard) {
    currentState = initState;
    input = "";
} else {
    currentState = initState;
    input = "";
    //To Do: Error to user about lack of power...
}
