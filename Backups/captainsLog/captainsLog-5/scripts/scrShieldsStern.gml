if(!(requiredPPShields > currentPP) && !shieldsStern) {
    shieldsStern = true;
    script_execute(scrWipeToInitState);
    currentPP -= requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(shieldsStern) {
    script_execute(scrWipeToInitState);
} else {
    script_execute(scrWipeToInitState);
    //To Do: Error to user about lack of power...
}
