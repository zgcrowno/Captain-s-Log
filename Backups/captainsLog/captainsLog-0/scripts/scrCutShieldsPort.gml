input = "";
currentState = initState;
if(shieldsPort) {
    currentPP += requiredPPShields;
    currentPPShieldsPort -= requiredPPShields;
    shieldsPort = false;
}
