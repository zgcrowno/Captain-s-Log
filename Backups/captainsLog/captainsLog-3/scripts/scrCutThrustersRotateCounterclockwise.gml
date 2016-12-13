script_execute(scrWipeToInitState);
if(thrustersRotateCounterclockwise) {
    currentPP += requiredPPThrustersRotate;
    currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
    actionMap[? "Cut Thrusters Count"] = true;
    thrustersRotateCounterclockwise = false;
}
