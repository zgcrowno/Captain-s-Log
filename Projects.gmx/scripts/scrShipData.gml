//The HUD object
hud = instance_find(objHud2, 0);

//The Action Queues
thrustersQueue = ds_queue_create();
shieldsQueue = ds_queue_create();
miscQueue = ds_queue_create();

//The Distance the Ship Moves per Turn
moveDistance = 20;

//The number of Seconds Which Passes Between Turns
turnTime = 3 * room_speed;

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
cutThrustersRotateState = 15;
cannonChargeState = 16;
currentState = initState;

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

//Maximum overall health and power of the ship
maxHP = 0;
maxPP = 0;

//Current overall health and power of the ship
currentHP = maxHP;
currentPP = maxPP;

//Maximum health of the ship's individual components
maxHPThrustersPort = 0;
maxHPThrustersStarboard = 0;
maxHPThrustersBow = 0;
maxHPThrustersStern = 0;
maxHPShieldsPort = 0;
maxHPShieldsStarboard = 0;
maxHPShieldsBow = 0;
maxHPShieldsStern = 0;

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
currentPPThrustersRotateClockwise = 0;
currentPPThrustersRotateCounterclockwise = 0;
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

//Rate at which the cannon cools down
cannonCooldownRate = 0;

//Number of thrusters activated
numActiveThrusters = 0;

//String representing user input
input = "";

//Text
thrustersText = "thrusters";
shieldsText = "shields";
gunsText = "guns";
cannonText = "cannon";
cutText = "cut";

//Ship-specific data
maxHPRicecake = 100;
maxPPRicecake = 100;

maxHPThrustersPortRicecake = 100;
maxHPThrustersStarboardRicecake = 100;
maxHPThrustersBowRicecake = 100;
maxHPThrustersSternRicecake = 100;
maxHPShieldsPortRicecake = 100;
maxHPShieldsStarboardRicecake = 100;
maxHPShieldsBowRicecake = 100;
maxHPShieldsSternRicecake = 100;

shipSpeedRicecake = 0.5
bulletSpeedRicecake = 0.75
specialSpeedRicecake = 0.5
cannonCooldownRateRicecake = 0.07
shipAngleSpeedRicecake = 0.5
