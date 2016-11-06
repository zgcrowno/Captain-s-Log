script_execute(scrWipeToInitState);
if(thrustersStern) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStern -= requiredPPThrusters;
    thrustersStern = false;
}
