if(!(requiredPPThrusters > currentPP) && !thrustersPort) {
    distanceToCoverPort += real(input);
    distanceToCover += real(input);
    thrustersPort = true;
    currentPP -= requiredPPThrusters;
    currentPPThrustersPort += requiredPPThrusters;
} else if(thrustersPort) {
    distanceToCoverPort += real(input);
    distanceToCover += real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
script_execute(scrDestination);
