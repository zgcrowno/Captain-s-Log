script_execute(scrWipeToInitState);
if(thrustersRotateClockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
    actionMap[? "Thrusters Clock"] = 0;
    thrustersRotateClockwise = false;
}
