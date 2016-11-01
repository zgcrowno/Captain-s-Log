script_execute(scrWipeToInitState);
if(thrustersRotateClockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
    thrustersRotateClockwise = false;
}
if(thrustersRotateCounterclockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
    thrustersRotateCounterclockwise = false;
}
script_execute(scrDestination);
