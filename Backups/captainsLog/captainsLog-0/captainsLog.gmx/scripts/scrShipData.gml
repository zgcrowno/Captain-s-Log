//The destination object
destination = instance_find(objDestination, 0);

//Hud States
initState = 0;
thrusterState = 1;
shieldState = 2;
gunState = 3;
cannonState = 4;
cutState = 5;
thrusterPortState = 6;
thrusterStarboardState = 7;
thrusterBowState = 8;
thrusterSternState = 9;
thrusterRotateState = 10;
thrusterRotateDegreesClockwiseState = 11;
thrusterRotateDegreesCounterclockwiseState = 12;
cutThrustersState = 13;
cutShieldsState = 14;
currentState = initState;

//The enemy the player is currently targeting
target = null;

//The id of the enemy the player is currently targeting
targetID = 0;

//Timer counting down to next shot fired
bulletTimer = 0;

//Thruster states
thrustersPort = false;
thrustersStarboard = false;
thrustersBow = false;
thrustersStern = false;
thrustersRotateClockwise = false;
thrustersRotateCounterclockwise = false;

//Shield states
shieldsPort = false;
shieldsStarboard = false;
shieldsBow = false;
shieldsStern = false;

//Gun state
guns = false;

//Cannon state
cannon = false;

//Maximum overall health and power of the ship
maxHP = 100;
maxPP = 100;

//Current overall health and power of the ship
currentHP = maxHP;
currentPP = maxPP;

//Maximum health of the ship's individual components
maxHPThrustersPort = 100;
maxHPThrustersStarboard = 100;
maxHPThrustersBow = 100;
maxHPThrustersStern = 100;
maxHPShieldsPort = 100;
maxHPShieldsStarboard = 100;
maxHPShieldsBow = 100;
maxHPShieldsStern = 100;

//Current health of the ship's individual components
currentHPThrustersPort = maxHPThrustersPort;
currentHPThrustersStarboard = maxHPThrustersStarboard;
currentHPThrustersBow = maxHPThrustersBow;
currentHPThrustersStern = maxHPThrustersStern;
currentHPShieldsPort = maxHPShieldsPort;
currentHPShieldsStarboard = maxHPShieldsStarboard;
currentHPShieldsBow = maxHPShieldsBow;
currentHPShieldsStern = maxHPShieldsStern;

//PP required to power individual components
requiredPPThrusters = maxPP / 4;
requiredPPThrustersRotate = maxPP / 2;
requiredPPShields = maxPP / 4;
requiredPPGuns = maxPP / 2
requiredPPCannon = maxPP * 0.75;

//Current power routed to the ship's individual components
currentPPThrustersPort = 0;
currentPPThrustersStarboard = 0;
currentPPThrustersBow = 0;
currentPPThrustersStern = 0;
currentPPThrustersRotate = 0;
currentPPShieldsPort = 0;
currentPPShieldsStarboard = 0;
currentPPShieldsBow = 0;
currentPPShieldsStern = 0;
currentPPGuns = 0;
currentPPCannon = 0;

//Percentage of overall power currently routed to the ship's individual component categories
percentPPThrusters = 0;
percentPPShields = 0;
percentPPGuns = 0;
percentPPCannon = 0; 

//Ship speed
shipSpeed = 0.5;

//Bullet speed
bulletSpeed = 0.75;

//Ship angle speed
shipAngleSpeed = 0.5;

//Number of thrusters activated
numActiveThrusters = 0;

//Distance ship is to travel
distanceToCover = 0;

//Distance ship is to travel by port thrusters
distanceToCoverPort = 0;

//Distance ship is to travel by starboard thrusters
distanceToCoverStarboard = 0;

//Distance ship is to travel by bow thrusters
distanceToCoverBow = 0;

//Distance ship is to travel by stern thrusters
distanceToCoverStern = 0;

//Degrees ship is to rotate
degreesToRotateClockwise = 0;
degreesToRotateCounterclockwise = 0;

//Degrees ship has rotated
degreesRotatedClockwise = 0;
degreesRotatedCounterclockwise = 0;

//String representing user input
input = "";

//Text
thrustersText = "thrusters";
shieldsText = "shields";
gunsText = "guns";
cannonText = "cannon";
cutText = "cut";

//Horizontal and vertical ship speeds
xspeed = 0;
yspeed = 0;

//Shield objects associated with the ship
shieldPort = instance_create(x, y, objShieldPort);
shieldPort.depth = -1;
shieldPort.visible = false;
shieldStarboard = instance_create(x, y, objShieldStarboard);
shieldStarboard.depth = -1;
shieldStarboard.visible = false;
shieldBow = instance_create(x, y, objShieldBow);
shieldBow.depth = -1;
shieldBow.visible = false;
shieldStern = instance_create(x, y, objShieldStern);
shieldStern.depth = -1;
shieldStern.visible = false;
