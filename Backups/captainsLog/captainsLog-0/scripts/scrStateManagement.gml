if(global.util.currentState == global.util.initState) {
    if(global.input == global.util.thrustersStringLower) {
        scrSetState(global.util.thrusterState);
    } else if(global.input == global.util.shieldsStringLower) {
        scrSetState(global.util.shieldState);
    } else if(global.input == global.util.targetStringLower) {
        scrSetState(global.util.targetState);
    } else if(global.input == global.util.gunsStringLower) {
        scrSetState(global.util.gunState);
    } else if(global.input == global.util.cannonStringLower) {
        scrSetState(global.util.cannonState);
    } else if(global.input == global.util.activeStringLower && (object_index == objFlasher || object_index == objMezzanine)) {
        scrSetState(global.util.activeState);
    } else if(global.input == global.util.cutStringLower) {
        scrSetState(global.util.cutState);
    }
} else if(global.util.currentState == global.util.thrusterState) {
    if(global.input == global.util.portStringLower) {
        scrSetState(global.util.thrusterPortState);
    } else if(global.input == global.util.starboardStringLower) {
        scrSetState(global.util.thrusterStarboardState);
    } else if(global.input == global.util.bowStringLower) {
        scrSetState(global.util.thrusterBowState);
    } else if(global.input == global.util.sternStringLower) {
        scrSetState(global.util.thrusterSternState);
    } else if(global.input == global.util.rotateStringLower) {
        scrSetState(global.util.thrusterRotateState);
    }
} else if(global.util.currentState == global.util.thrusterRotateState) {
    if(global.input == global.util.clockStringLower) {
        scrSetState(global.util.thrusterRotateDegreesClockwiseState);
    } else if(global.input == global.util.countStringLower) {
        scrSetState(global.util.thrusterRotateDegreesCounterclockwiseState);
    }
} else if(global.util.currentState == global.util.cutState) {
    if(global.input == global.util.thrustersStringLower) {
        scrSetState(global.util.cutThrustersState);
    } else if(global.input == global.util.shieldsStringLower) {
        scrSetState(global.util.cutShieldsState);
    }
} else if(global.util.currentState == global.util.cutThrustersState) {
    if(global.input == global.util.rotateStringLower) {
        scrSetState(global.util.cutThrustersRotateState);
    }
}
