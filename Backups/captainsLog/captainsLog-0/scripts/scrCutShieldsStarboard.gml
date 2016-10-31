input = "";
currentState = initState;
if(shieldsStarboard) {
    currentPP += requiredPPShields;
    currentPPShieldsStarboard -= requiredPPShields;
    shieldsStarboard = false;
}
