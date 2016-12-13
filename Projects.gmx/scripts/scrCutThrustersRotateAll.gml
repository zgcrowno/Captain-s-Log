script_execute(scrWipeToInitState);
if(thrustersRotateClockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
    actionMap[? "Thrusters Clock"] = 0;
    thrustersRotateClockwise = false;
}
if(thrustersRotateCounterclockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
    actionMap[? "Thrusters Count"] = 0;
    thrustersRotateCounterclockwise = false;
}
