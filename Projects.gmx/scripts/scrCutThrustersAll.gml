script_execute(scrWipeToInitState);
if(thrustersPort) {
    currentPP += requiredPPThrusters;
    currentPPThrustersPort -= requiredPPThrusters;
    actionMap[? "Thrusters Port"] = 0;
    thrustersPort = false;
}
if(thrustersStarboard) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStarboard -= requiredPPThrusters;
    actionMap[? "Thrusters Starboard"] = 0;
    thrustersStarboard = false;
}
if(thrustersBow) {
    currentPP += requiredPPThrusters;
    currentPPThrustersBow -= requiredPPThrusters;
    actionMap[? "Thrusters Bow"] = 0;
    thrustersBow = false;
}
if(thrustersStern) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStern -= requiredPPThrusters;
    actionMap[? "Thrusters Stern"] = 0;
    thrustersStern = false;
}
