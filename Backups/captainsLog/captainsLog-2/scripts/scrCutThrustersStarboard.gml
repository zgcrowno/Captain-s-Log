if(thrustersStarboard) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStarboard -= requiredPPThrusters;
    actionMap[? "Cut Thrusters Starboard"] = true;
    thrustersStarboard = false;
}
script_execute(scrWipeToInitState);
