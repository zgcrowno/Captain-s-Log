if(currentState == initState) {
    if(input == "thrusters") {
        scrSetState(thrusterState);
    } else if(input == "shields") {
        scrSetState(shieldState);
    } else if(input == "target") {
        scrSetState(targetState);
    } else if(input == "guns") {
        scrSetState(gunState);
    } else if(input == "cannon") {
        scrSetState(cannonState);
    } else if(input == "cut") {
        scrSetState(cutState);
    }
} else if(currentState == thrusterState) {
    if(input == "port") {
        scrSetState(thrusterPortState);
    } else if(input == "starboard") {
        scrSetState(thrusterStarboardState);
    } else if(input == "bow") {
        scrSetState(thrusterBowState);
    } else if(input == "stern") {
        scrSetState(thrusterSternState);
    } else if(input == "rotate") {
        scrSetState(thrusterRotateState);
    }
} else if(currentState == thrusterRotateState) {
    if(input == "clock") {
        scrSetState(thrusterRotateDegreesClockwiseState);
    } else if(input == "count") {
        scrSetState(thrusterRotateDegreesCounterclockwiseState);
    }
} else if(currentState == cutState) {
    if(input == "thrusters") {
        scrSetState(cutThrustersState);
    } else if(input == "shields") {
        scrSetState(cutShieldsState);
    }
} else if(currentState == cutThrustersState) {
    if(input == "rotate") {
        scrSetState(cutThrustersRotateState);
    }
}
