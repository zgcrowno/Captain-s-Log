if(thrustersStarboard) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStarboard -= requiredPPThrusters;
    thrustersStarboard = false;
}
script_execute(scrWipeToInitState);
