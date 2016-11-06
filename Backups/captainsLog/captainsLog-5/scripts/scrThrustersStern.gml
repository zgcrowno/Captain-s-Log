if(!(requiredPPThrusters > currentPP) && !thrustersStern) {
    distanceToCoverStern += real(input);
    distanceToCover += real(input);
    thrustersStern = true;
    currentPP -= requiredPPThrusters;
    currentPPThrustersStern += requiredPPThrusters;
} else if(thrustersStern) {
    distanceToCoverStern += real(input);
    distanceToCover += real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
