script_execute(scrWipeToInitState);
if(shieldsPort) {
    currentPP += requiredPPShields;
    currentPPShieldsPort -= requiredPPShields;
    actionMap[? "Shields Port"] = false;
    shieldsPort = false;
}
if(shieldsStarboard) {
    currentPP += requiredPPShields;
    currentPPShieldsStarboard -= requiredPPShields;
    actionMap[? "Shields Starboard"] = false;
    shieldsStarboard = false;
}
if(shieldsBow) {
    currentPP += requiredPPShields;
    currentPPShieldsBow -= requiredPPShields;
    actionMap[? "Shields Bow"] = false;
    shieldsBow = false;
}
if(shieldsStern) {
    currentPP += requiredPPShields;
    currentPPShieldsStern -= requiredPPShields;
    actionMap[? "Shields Stern"] = false;
    shieldsStern = false;
}
