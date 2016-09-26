depth = 0;

player = instance_find(objRiceCake, 0);
hud = instance_find(objHud2, 0);

thrustersPort = false;
thrustersStarboard = false;
thrustersBow = false;
thrustersStern = false;
thrustersRotateClockwise = false;
thrustersRotateCounterclockwise = false;

destinationPlacementSpeed = 2000;
distanceToCover = 0;
distanceToCoverPort = 0;
distanceToCoverStarboard = 0;
distanceToCoverBow = 0;
distanceToCoverStern = 0;
degreesToRotateClockwise = 0;
degreesToRotateCounterclockwise = 0;
degreesRotatedClockwise = 0;
degreesRotatedCounterclockwise = 0;
numActiveThrusters = 0;

destinationSpeed = player.shipSpeed;
destinationAngleSpeed = player.shipAngleSpeed;
