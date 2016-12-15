if(currentState == initState) {
    if(input == "thrusters") {
        currentState = thrusterState;
        input = "";
    } else if(input == "shields") {
        currentState = shieldState;
        input = "";
    } else if(input == "guns") {
        currentState = gunState;
        input = "";
    } else if(input == "cannon") {
        currentState = cannonState;
        input = "";
    } else if(input == "cut") {
        currentState = cutState;
        input = "";
    }
} else if(currentState == thrusterState) {
    if(input == "port") {
        currentState = thrusterPortState;
        input = "";
    } else if(input == "starboard") {
        currentState = thrusterStarboardState;
        input = "";
    } else if(input == "bow") {
        currentState = thrusterBowState;
        input = "";
    } else if(input == "stern") {
        currentState = thrusterSternState;
        input = "";
    } else if(input == "rotate") {
        currentState = thrusterRotateState;
        input = "";
    }
} else if(currentState == thrusterRotateState) {
    if(input == "clockwise") {
        currentState = thrusterRotateDegreesClockwiseState;
        input = "";
    } else if(input == "counter") {
        currentState = thrusterRotateDegreesCounterclockwiseState;
        input = "";
    }
} else if(currentState == cutState) {
    if(input == "thrusters") {
        currentState = cutThrustersState;
        input = "";
    } else if(input == "shields") {
        currentState = cutShieldsState;
        input = "";
    }
} else if(currentState == cutThrustersState) {
    if(input == "rotate") {
        currentState = cutThrustersRotateState;
        input = "";
    }
}
