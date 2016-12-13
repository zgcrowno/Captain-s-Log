if(!(requiredPPThrusters > currentPP) && !thrustersPort) {
    distanceToCoverPort += real(input);
    distanceToCover += real(input);
    actionMap[? "Thrusters Port"] = real(input);
    thrustersPort = true;
    currentPP -= requiredPPThrusters;
    currentPPThrustersPort += requiredPPThrusters;
} else if(thrustersPort) {
    distanceToCoverPort += real(input);
    distanceToCover += real(input);
    actionMap[? "Thrusters Port"] = actionMap[? "Thrusters Port"] + real(input);
} else {
    //To Do: Error to user about lack of power
}
script_execute(scrWipeToInitState);
