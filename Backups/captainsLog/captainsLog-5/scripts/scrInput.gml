if(!keyboard_get_numlock()) {
    //This is to prevent the user from accidentally disabling numlock,
    //thus preventing them from using the numpad
    keyboard_set_numlock(true);
} 
if(keyboard_check_pressed(vk_tab)) {
    //In the future, it might be wise to configure the instance data states in such
    //a way that currentState will be decremented here.
    scrSetState(initState);
} else if(keyboard_check_pressed(vk_backspace)) {
    scrBackspacePressed();
} else if(currentState == initState) {
    scrInitStateChecks();
} else if(currentState == thrusterState) {
    scrThrusterStateChecks();
} else if(currentState == thrusterPortState) {
    scrThrusterPortStateChecks();
} else if(currentState == thrusterStarboardState) {
    scrThrusterStarboardStateChecks(); 
} else if(currentState == thrusterBowState) {
    scrThrusterBowStateChecks();
} else if(currentState == thrusterSternState) {
    scrThrusterSternStateChecks(); 
} else if(currentState == thrusterRotateState) {
    scrThrusterRotateStateChecks(); 
} else if(currentState == thrusterRotateDegreesClockwiseState) {
    scrThrusterRotateDegreesClockwiseStateChecks();
} else if(currentState == thrusterRotateDegreesCounterclockwiseState) {
    scrThrusterRotateDegreesCounterclockwiseStateChecks();
} else if(currentState == shieldState) {
    scrShieldStateChecks();
} else if(currentState == targetState) {
    scrSetTarget();
} else if(currentState == gunState) {
    scrGunStateChecks();
} else if(currentState == cannonState) {
    scrCannonStateChecks();
} else if(currentState == cutState) {
    scrCutStateChecks();
} else if(currentState == cutThrustersState) {
    scrCutThrusterStateChecks();
} else if(currentState == cutThrustersRotateState) {
    scrCutThrusterRotateStateChecks();
} else if(currentState == cutShieldsState) {
    scrCutShieldStateChecks();
}
