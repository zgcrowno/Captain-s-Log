if(thrustersBow) {
    currentPP += requiredPPThrusters;
    currentPPThrustersBow -= requiredPPThrusters;
    thrustersBow = false;
}
script_execute(scrWipeToInitState);
