script_execute(scrWipeToInitState);
if(shieldsStarboard) {
    currentPP += requiredPPShields;
    currentPPShieldsStarboard -= requiredPPShields;
    actionMap[? "Cut Shields Starboard"] = true;
    shieldsStarboard = false;
}
