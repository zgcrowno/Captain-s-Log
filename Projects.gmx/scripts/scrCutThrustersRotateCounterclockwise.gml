script_execute(scrWipeToInitState);
if(thrustersRotateCounterclockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
    thrustersRotateCounterclockwise = false;
}
script_execute(scrDestination);
