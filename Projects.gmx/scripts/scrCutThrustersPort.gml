script_execute(scrWipeToInitState);
if(thrustersPort) {
    currentPP += requiredPPThrusters;
    currentPPThrustersPort -= requiredPPThrusters;
    actionMap[? "Thrusters Port"] = 0;
    thrustersPort = false;
}
