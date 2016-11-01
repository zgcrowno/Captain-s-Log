if(!(requiredPPShields > currentPP) && !shieldsBow) {
    shieldsBow = true;
    script_execute(scrWipeToInitState);
    currentPP -= requiredPPShields;
    currentPPShieldsBow += requiredPPShields;
} else if(shieldsBow) {
    script_execute(scrWipeToInitState);
} else {
    script_execute(scrWipeToInitState);
    //To Do: Error to user about lack of power...
}
