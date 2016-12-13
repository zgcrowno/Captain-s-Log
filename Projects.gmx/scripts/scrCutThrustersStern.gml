script_execute(scrWipeToInitState);
if(thrustersStern) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStern -= requiredPPThrusters;
    actionMap[? "Thrusters Stern"] = 0;
    thrustersStern = false;
}
