script_execute(scrWipeToInitState);
if(thrustersPort) {
    currentPP += requiredPPThrusters;
    currentPPThrustersPort -= requiredPPThrusters;
    thrustersPort = false;
}
script_execute(scrDestination);
