if(!(requiredPPShields > currentPP) && !shieldsPort) {
    shieldsPort = true;
    currentPP -= requiredPPShields;
    currentPPShieldsPort += requiredPPShields;
} else if(!shieldsPort) {
    //To Do: Error to user about lack of power...
} 
script_execute(scrWipeToInitState);
