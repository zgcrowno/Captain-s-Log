if(!keyboard_get_numlock()) {
    //This is to prevent the user from accidentally disabling numlock,
    //thus preventing them from using the numpad
    keyboard_set_numlock(true);
} 
if(keyboard_check_pressed(vk_tab)) {
    //TODO: Account for pause menu
    if(room != asset_get_index(room_get_name(rmTestMainMenu))) {
        scrSetState(global.util.initState);
    } else {
        scrSetState(global.util.menuInitState);
    }
} else if(keyboard_check_pressed(vk_backspace)) {
    if(global.input != "") {
        global.input = string_delete(global.input, string_length(global.input), 1);
    }
} else if(global.player != noone) {
    with(global.player) {
        if(global.util.currentState == global.util.initState) {
            scrInitStateChecks();
        } else if(global.util.currentState == global.util.thrusterState) {
            scrThrusterStateChecks();
        } else if(global.util.currentState == global.util.thrusterPortState) {
            scrThrusterPortStateChecks();
        } else if(global.util.currentState == global.util.thrusterStarboardState) {
            scrThrusterStarboardStateChecks(); 
        } else if(global.util.currentState == global.util.thrusterBowState) {
            scrThrusterBowStateChecks();
        } else if(global.util.currentState == global.util.thrusterSternState) {
            scrThrusterSternStateChecks(); 
        } else if(global.util.currentState == global.util.thrusterRotateState) {
            scrThrusterRotateStateChecks(); 
        } else if(global.util.currentState == global.util.thrusterRotateDegreesClockwiseState) {
            scrThrusterRotateDegreesClockwiseStateChecks();
        } else if(global.util.currentState == global.util.thrusterRotateDegreesCounterclockwiseState) {
            scrThrusterRotateDegreesCounterclockwiseStateChecks();
        } else if(global.util.currentState == global.util.shieldState) {
            scrShieldStateChecks();
        } else if(global.util.currentState == global.util.targetState) {
            scrTargetStateChecks();
        } else if(global.util.currentState == global.util.gunState) {
            scrGunStateChecks();
        } else if(global.util.currentState == global.util.cannonState) {
            scrCannonStateChecks();
        } else if(global.util.currentState == global.util.activeState) {
            scrActiveStateChecks();
        } else if(global.util.currentState == global.util.cutState) {
            scrCutStateChecks();
        } else if(global.util.currentState == global.util.cutThrustersState) {
            scrCutThrusterStateChecks();
        } else if(global.util.currentState == global.util.cutThrustersRotateState) {
            scrCutThrusterRotateStateChecks();
        } else if(global.util.currentState == global.util.cutShieldsState) {
            scrCutShieldStateChecks();
        }      
    }
} else if(global.util.currentState == global.util.menuInitState) {
    scrMenuInitStateChecks();
}
