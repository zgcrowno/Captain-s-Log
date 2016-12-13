if(!(requiredPPThrusters > currentPP) && !thrustersBow) {
    distanceToCoverBow += real(input);
    distanceToCover += real(input);
    actionMap[? "Thrusters Bow"] = real(input);
    thrustersBow = true;
    currentPP -= requiredPPThrusters;
    currentPPThrustersBow += requiredPPThrusters;
} else if(thrustersBow) {
    distanceToCoverBow += real(input);
    distanceToCover += real(input);
    actionMap[? "Thrusters Bow"] = actionMap[? "Thrusters Bow"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
