if(!(requiredPPShields > currentPP) && !shieldsStern) {
    shieldsStern = true;
    currentState = initState;
    input = "";
    currentPP -= requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(shieldsStern) {
    currentState = initState;
    input = "";
} else {
    currentState = initState;
    input = "";
    //To Do: Error to user about lack of power...
}
