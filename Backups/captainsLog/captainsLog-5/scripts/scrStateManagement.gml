if(currentState == initState) {
    if(input == "thrusters") {
        script_execute(scrSetState, thrusterState);
    } else if(input == "shields") {
        script_execute(scrSetState, shieldState);
    } else if(input == "target") {
        script_execute(scrSetState, targetState);
    } else if(input == "guns") {
        script_execute(scrSetState, gunState);
    } else if(input == "cannon") {
        script_execute(scrSetState, cannonState);
    } else if(input == "cut") {
        script_execute(scrSetState, cutState);
    }
} else if(currentState == thrusterState) {
    if(input == "port") {
        script_execute(scrSetState, thrusterPortState);
    } else if(input == "starboard") {
        script_execute(scrSetState, thrusterStarboardState);
    } else if(input == "bow") {
        script_execute(scrSetState, thrusterBowState);
    } else if(input == "stern") {
        script_execute(scrSetState, thrusterSternState);
    } else if(input == "rotate") {
        script_execute(scrSetState, thrusterRotateState);
    }
} else if(currentState == thrusterRotateState) {
    if(input == "clock") {
        script_execute(scrSetState, thrusterRotateDegreesClockwiseState);
    } else if(input == "count") {
        script_execute(scrSetState, thrusterRotateDegreesCounterclockwiseState);
    }
} else if(currentState == cutState) {
    if(input == "thrusters") {
        script_execute(scrSetState, cutThrustersState);
    } else if(input == "shields") {
        script_execute(scrSetState, cutShieldsState);
    }
} else if(currentState == cutThrustersState) {
    if(input == "rotate") {
        script_execute(scrSetState, cutThrustersRotateState);
    }
}
