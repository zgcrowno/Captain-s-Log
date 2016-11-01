if(!(requiredPPShields > currentPP) && !shieldsStern) {
    shieldsStern = true;
    currentPP -= requiredPPShields;
    currentPPShieldsStern += requiredPPShields;
} else if(!shieldsStern) {
    //To Do: Error to user about lack of power...
} 
script_execute(scrWipeToInitState);
