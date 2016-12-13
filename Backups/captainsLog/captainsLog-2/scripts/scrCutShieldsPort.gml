script_execute(scrWipeToInitState);
if(shieldsPort) {
    currentPP += requiredPPShields;
    currentPPShieldsPort -= requiredPPShields;
    actionMap[? "Cut Shields Port"] = true;
    shieldsPort = false;
}
