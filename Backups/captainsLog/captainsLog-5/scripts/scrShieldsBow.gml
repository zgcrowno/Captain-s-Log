if(!(requiredPPShields > currentPP) && !shieldsBow) {
    shieldsBow = true;
    currentPP -= requiredPPShields;
    currentPPShieldsBow += requiredPPShields;
} else if(!shieldsBow) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
