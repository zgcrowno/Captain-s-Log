script_execute(scrWipeToInitState);
if(thrustersRotateClockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
    actionMap[? "Cut Thrusters Clock"] = true;
    thrustersRotateClockwise = false;
}
