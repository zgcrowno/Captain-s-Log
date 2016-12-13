script_execute(scrWipeToInitState);
if(shieldsStern) {
    currentPP += requiredPPShields;
    currentPPShieldsStern -= requiredPPShields;
    actionMap[? "Cut Shields Stern"] = true;
    shieldsStern = false;
}
