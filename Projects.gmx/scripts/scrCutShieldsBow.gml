script_execute(scrWipeToInitState);
if(shieldsBow) {
    currentPP += requiredPPShields;
    currentPPShieldsBow -= requiredPPShields;
    actionMap[? "Shields Bow"] = false;
    shieldsBow = false;
}
