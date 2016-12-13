script_execute(scrWipeToInitState);
if(thrustersPort) {
    currentPP += requiredPPThrusters;
    currentPPThrustersPort -= requiredPPThrusters;
    actionMap[? "Cut Thrusters Port"] = true;
    thrustersPort = false;
}
