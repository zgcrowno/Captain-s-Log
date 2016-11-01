if(!(requiredPPThrusters > currentPP) && !thrustersBow) {
    distanceToCoverBow += real(input);
    distanceToCover += real(input);
    thrustersBow = true;
    currentPP -= requiredPPThrusters;
    currentPPThrustersBow += requiredPPThrusters;
} else if(thrustersBow) {
    distanceToCoverBow += real(input);
    distanceToCover += real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
script_execute(scrDestination);
