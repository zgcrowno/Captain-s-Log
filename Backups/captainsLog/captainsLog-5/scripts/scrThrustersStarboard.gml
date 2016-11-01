if(!(requiredPPThrusters > currentPP) && !thrustersStarboard) {
    distanceToCoverStarboard += real(input);
    distanceToCover += real(input);
    thrustersStarboard = true;
    script_execute(scrWipeToInitState);
    currentPP -= requiredPPThrusters;
    currentPPThrustersStarboard += requiredPPThrusters;
} else if(thrustersStarboard) {
    distanceToCoverStarboard += real(input);
    distanceToCover += real(input);
    script_execute(scrWipeToInitState);
} else {
    script_execute(scrWipeToInitState);
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
