if(!(requiredPPShields > currentPP) && !shieldsPort) {
    shieldsPort = true;
    currentState = initState;
    input = "";
    currentPP -= requiredPPShields;
    currentPPShieldsPort += requiredPPShields;
} else if(shieldsPort) {
    currentState = initState;
    input = "";
} else {
    currentState = initState;
    input = "";
    //To Do: Error to user about lack of power...
}
