if(!(requiredPPThrustersRotate > currentPP) && !thrustersRotateCounterclockwise) {
    degreesToRotateCounterclockwise = real(input);
    thrustersRotateCounterclockwise = true;
    currentPP -= requiredPPThrustersRotate;
    currentPPThrustersRotateCounterclockwise += requiredPPThrustersRotate;
} else if(thrustersRotateCounterclockwise) {
    degreesToRotateCounterclockwise += real(input);
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
