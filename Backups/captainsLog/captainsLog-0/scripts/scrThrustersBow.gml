if(!(requiredPPThrusters > currentPP) && !thrustersBow) {
    distanceToCoverBow += real(input);
    distanceToCover += real(input);
    currentState = initState;
    thrustersBow = true;
    input = "";
    currentPP -= requiredPPThrusters;
    currentPPThrustersBow += requiredPPThrusters;
} else if(thrustersBow) {
    distanceToCoverBow += real(input);
    distanceToCover += real(input);
    currentState = initState;
    input = "";
} else {
    currentState = initState;
    input = "";
    //To Do: Error to user about lack of power
}
destination.x = x;
destination.y = y;
destination.image_angle = image_angle;
destination.thrustersPort = thrustersPort;
destination.thrustersStarboard = thrustersStarboard;
destination.thrustersBow = thrustersBow;
destination.thrustersStern = thrustersStern;
destination.thrustersRotateClockwise = thrustersRotateClockwise;
destination.thrustersRotateCounterclockwise = thrustersRotateCounterclockwise;
destination.distanceToCover = distanceToCover;
destination.distanceToCoverPort = distanceToCoverPort;
destination.distanceToCoverStarboard = distanceToCoverStarboard;
destination.distanceToCoverBow = distanceToCoverBow;
destination.distanceToCoverStern = distanceToCoverStern;
destination.degreesToRotateClockwise = degreesToRotateClockwise;
destination.degreesToRotateCounterclockwise = degreesToRotateCounterclockwise;
destination.degreesRotatedClockwise = degreesRotatedClockwise;
destination.degreesRotatedCounterclockwise = degreesRotatedCounterclockwise;
destination.numActiveThrusters = numActiveThrusters;
destination.distanceToCoverPort += real(input);
destination.distanceToCover += real(input);
