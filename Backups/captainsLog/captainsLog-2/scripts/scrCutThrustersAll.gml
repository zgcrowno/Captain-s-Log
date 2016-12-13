script_execute(scrWipeToInitState);
if(thrustersPort) {
    currentPP += requiredPPThrusters;
    currentPPThrustersPort -= requiredPPThrusters;
    actionMap[? "Cut Thrusters All"] = true;
    thrustersPort = false;
}
if(thrustersStarboard) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStarboard -= requiredPPThrusters;
    actionMap[? "Cut Thrusters All"] = true;
    thrustersStarboard = false;
}
if(thrustersBow) {
    currentPP += requiredPPThrusters;
    currentPPThrustersBow -= requiredPPThrusters;
    actionMap[? "Cut Thrusters All"] = true;
    thrustersBow = false;
}
if(thrustersStern) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStern -= requiredPPThrusters;
    actionMap[? "Cut Thrusters All"] = true;
    thrustersStern = false;
}
