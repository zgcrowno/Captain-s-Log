if(thrustersStarboard) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStarboard -= requiredPPThrusters;
    actionMap[? "Thrusters Starboard"] = 0;
    thrustersStarboard = false;
}
script_execute(scrWipeToInitState);
