if(thrustersBow) {
    currentPP += requiredPPThrusters;
    currentPPThrustersBow -= requiredPPThrusters;
    actionMap[? "Thrusters Bow"] = 0;
    thrustersBow = false;
}
script_execute(scrWipeToInitState);
