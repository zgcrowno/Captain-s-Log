if(!(requiredPPShields > currentPP) && !shieldsBow) {
    shieldsBow = true;
    currentState = initState;
    input = "";
    currentPP -= requiredPPShields;
    currentPPShieldsBow += requiredPPShields;
} else if(shieldsBow) {
    currentState = initState;
    input = "";
} else {
    currentState = initState;
    input = "";
    //To Do: Error to user about lack of power...
}
