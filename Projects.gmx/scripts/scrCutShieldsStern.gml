script_execute(scrWipeToInitState);
if(shieldsStern) {
    currentPP += requiredPPShields;
    currentPPShieldsStern -= requiredPPShields;
    actionMap[? "Shields Stern"] = false;
    shieldsStern = false;
}
