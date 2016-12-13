script_execute(scrWipeToInitState);
if(thrustersRotateCounterclockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
    actionMap[? "Thrusters Count"] = 0;
    thrustersRotateCounterclockwise = false;
}
