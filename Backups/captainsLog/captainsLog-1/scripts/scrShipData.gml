//The HUD object
hud = instance_find(objHud, 0);

//The Util Object
util = instance_find(objUtil, 0);

//The ship's current target
target = noone;

//A collection of all the enemies in the room
enemies = script_execute(scrGetEnemies);

//The maximum length of all enemies' designations
maxEnemiesDesignationLength = 0;

//Value used in determining where to spawn cannonBullet or cannonLaser
cannonOffset = 0;

//The Shield Input States
active = 0;
inactive = 1;
toActivate = 2;
toDeactivate = 3;

//The ship's action map
actionMap = ds_map_create();
ds_map_add(actionMap, "Thrusters Port", 0);
ds_map_add(actionMap, "Thrusters Starboard", 0);
ds_map_add(actionMap, "Thrusters Bow", 0);
ds_map_add(actionMap, "Thrusters Stern", 0);
ds_map_add(actionMap, "Thrusters Count", 0);
ds_map_add(actionMap, "Thrusters Clock", 0);
ds_map_add(actionMap, "Shields Port", inactive);
ds_map_add(actionMap, "Shields Starboard", inactive);
ds_map_add(actionMap, "Shields Bow", inactive);
ds_map_add(actionMap, "Shields Stern", inactive);
ds_map_add(actionMap, "Target", noone);
ds_map_add(actionMap, "Guns", false);
ds_map_add(actionMap, "Cannon", false);
ds_map_add(actionMap, "Active", false);
ds_map_add(actionMap, "Passive", inactive);

//The ship's action queue (actually a list)
actionQueue = ds_list_create();

//The amount of damage dealt by the ship's cannon and active ability, respectively
cannonDamage = 0;
activeDamage = 1;

//The Grid Boxes That Will Represent the Ship's Shields
portShields = noone;
starboardShields = noone;
bowShields = noone;
sternShields = noone;

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
targetState = 17;
currentState = initState;

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
requiredPPActive = maxPP * 0.75;
requiredPPPassive = maxPP * 0.2;

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
currentPPActive = 0;
currentPPPassive = 0;

//Percentage of overall power currently routed to the ship's individual component categories
percentPPThrusters = 0;
percentPPShields = 0;
percentPPGuns = 0;
percentPPCannon = 0;
percentPPActive = 0;
percentPPPassive = 0;

//String representing user input
input = "";

//Text
thrustersText = "thrusters";
shieldsText = "shields";
gunsText = "guns";
cannonText = "cannon";
cutText = "cut";

//Ship-specific data
//Ricecake
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

cannonOffsetRiceCake = 11;
cannonDamageRiceCake = 0;
activeDamageRiceCake = 1;

//Pawn
maxHPPawn = 50;
