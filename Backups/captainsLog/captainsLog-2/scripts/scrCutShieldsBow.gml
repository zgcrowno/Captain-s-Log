script_execute(scrWipeToInitState);
if(shieldsBow) {
    currentPP += requiredPPShields;
    currentPPShieldsBow -= requiredPPShields;
    actionMap[? "Cut Shields Bow"] = true;
    shieldsBow = false;
}
