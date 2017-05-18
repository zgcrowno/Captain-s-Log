if(currentState == initState) {
    if(input == global.util.thrustersStringLower) {
        scrSetState(thrusterState);
    } else if(input == global.util.shieldsStringLower) {
        scrSetState(shieldState);
    } else if(input == global.util.targetStringLower) {
        scrSetState(targetState);
    } else if(input == global.util.gunsStringLower) {
        scrSetState(gunState);
    } else if(input == global.util.cannonStringLower) {
        scrSetState(cannonState);
    } else if(input == global.util.activeStringLower && (object_index == objFlasher || object_index == objMezzanine)) {
        scrSetState(activeState);
    } else if(input == global.util.cutStringLower) {
        scrSetState(cutState);
    }
} else if(currentState == thrusterState) {
    if(input == global.util.portStringLower) {
        scrSetState(thrusterPortState);
    } else if(input == global.util.starboardStringLower) {
        scrSetState(thrusterStarboardState);
    } else if(input == global.util.bowStringLower) {
        scrSetState(thrusterBowState);
    } else if(input == global.util.sternStringLower) {
        scrSetState(thrusterSternState);
    } else if(input == global.util.rotateStringLower) {
        scrSetState(thrusterRotateState);
    }
} else if(currentState == thrusterRotateState) {
    if(input == global.util.clockStringLower) {
        scrSetState(thrusterRotateDegreesClockwiseState);
    } else if(input == global.util.countStringLower) {
        scrSetState(thrusterRotateDegreesCounterclockwiseState);
    }
} else if(currentState == cutState) {
    if(input == global.util.thrustersStringLower) {
        scrSetState(cutThrustersState);
    } else if(input == global.util.shieldsStringLower) {
        scrSetState(cutShieldsState);
    }
} else if(currentState == cutThrustersState) {
    if(input == global.util.rotateStringLower) {
        scrSetState(cutThrustersRotateState);
    }
}
