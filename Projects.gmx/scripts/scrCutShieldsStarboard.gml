script_execute(scrWipeToInitState);
if(shieldsStarboard) {
    currentPP += requiredPPShields;
    currentPPShieldsStarboard -= requiredPPShields;
    actionMap[? "Shields Starboard"] = false;
    shieldsStarboard = false;
}
