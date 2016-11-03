if(!(requiredPPThrustersRotate > currentPP) && !thrustersRotateClockwise) {
    degreesToRotateClockwise = real(input);
    thrustersRotateClockwise = true;
    currentPP -= requiredPPThrustersRotate;
    currentPPThrustersRotateClockwise += requiredPPThrustersRotate;
} else if(thrustersRotateClockwise) {
    degreesToRotateClockwise += real(input);
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
script_execute(scrDestination);
