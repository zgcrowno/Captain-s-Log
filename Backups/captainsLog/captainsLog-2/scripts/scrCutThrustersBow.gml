if(thrustersBow) {
    currentPP += requiredPPThrusters;
    currentPPThrustersBow -= requiredPPThrusters;
    actionMap[? "Cut Thrusters Bow"] = true;
    thrustersBow = false;
}
script_execute(scrWipeToInitState);
