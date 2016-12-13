script_execute(scrWipeToInitState);
if(thrustersRotateClockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
    actionMap[? "Cut Thrusters Rotate"] = true;
    thrustersRotateClockwise = false;
}
if(thrustersRotateCounterclockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
    actionMap[? "Cut Thrusters Rotate"] = true;
    thrustersRotateCounterclockwise = false;
}
