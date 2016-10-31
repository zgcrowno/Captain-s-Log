input = "";
currentState = initState;
if(thrustersStarboard) {
    currentPP += requiredPPThrusters;
    currentPPThrustersStarboard -= requiredPPThrusters;
    thrustersStarboard = false;
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
