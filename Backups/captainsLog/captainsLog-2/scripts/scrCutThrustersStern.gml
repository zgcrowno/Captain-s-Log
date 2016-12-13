script_execute(scrWipeToInitState);
if(thrustersStern) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStern -= requiredPPThrusters;
    actionMap[? "Cut Thrusters Stern"] = true;
    thrustersStern = false;
}
