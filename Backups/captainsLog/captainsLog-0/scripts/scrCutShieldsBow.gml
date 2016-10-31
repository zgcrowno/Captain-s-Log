input = "";
currentState = initState;
if(shieldsBow) {
    currentPP += requiredPPShields;
    currentPPShieldsBow -= requiredPPShields;
    shieldsBow = false;
}
