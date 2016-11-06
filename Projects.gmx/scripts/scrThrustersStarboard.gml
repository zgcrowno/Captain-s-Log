if(!(requiredPPThrusters > currentPP) && !thrustersStarboard) {
    distanceToCoverStarboard += real(input);
    distanceToCover += real(input);
    thrustersStarboard = true;
    currentPP -= requiredPPThrusters;
    currentPPThrustersStarboard += requiredPPThrusters;
} else if(thrustersStarboard) {
    distanceToCoverStarboard += real(input);
    distanceToCover += real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
