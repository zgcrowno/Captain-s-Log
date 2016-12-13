script_execute(scrWipeToInitState);
if(shieldsPort) {
    currentPP += requiredPPShields;
    currentPPShieldsPort -= requiredPPShields;
    actionMap[? "Cut Shields All"] = true;
    shieldsPort = false;
}
if(shieldsStarboard) {
    currentPP += requiredPPShields;
    currentPPShieldsStarboard -= requiredPPShields;
    actionMap[? "Cut Shields All"] = true;
    shieldsStarboard = false;
}
if(shieldsBow) {
    currentPP += requiredPPShields;
    currentPPShieldsBow -= requiredPPShields;
    actionMap[? "Cut Shields All"] = true;
    shieldsBow = false;
}
if(shieldsStern) {
    currentPP += requiredPPShields;
    currentPPShieldsStern -= requiredPPShields;
    actionMap[? "Cut Shields All"] = true;
    shieldsStern = false;
}
