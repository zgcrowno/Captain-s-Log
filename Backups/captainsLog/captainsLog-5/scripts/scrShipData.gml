//The HUD object
hud = instance_find(objHud, 0);

//The Util Object
util = instance_find(objUtil, 0);

//The player ship
player = instance_find(objPlayerShip, 0);

//The ship's current target
target = noone;

//The ship's background sprite
backgroundSprite = noone;

//Value used in determining where to spawn cannonBullet or cannonLaser
cannonOffset = 0;

//The Shield Input States
active = 0;
inactive = 1;
toActivate = 2;
toDeactivate = 3;

//The ship's action map
actionMap = ds_map_create();
ds_map_add(actionMap, util.actionMapThrustersPortString, 0);
ds_map_add(actionMap, util.actionMapThrustersStarboardString, 0);
ds_map_add(actionMap, util.actionMapThrustersBowString, 0);
ds_map_add(actionMap, util.actionMapThrustersSternString, 0);
ds_map_add(actionMap, util.actionMapThrustersCountString, 0);
ds_map_add(actionMap, util.actionMapThrustersClockString, 0);
ds_map_add(actionMap, util.actionMapShieldsPortString, inactive);
ds_map_add(actionMap, util.actionMapShieldsStarboardString, inactive);
ds_map_add(actionMap, util.actionMapShieldsBowString, inactive);
ds_map_add(actionMap, util.actionMapShieldsSternString, inactive);
ds_map_add(actionMap, util.actionMapTargetString, noone);
ds_map_add(actionMap, util.actionMapGunsString, false);
ds_map_add(actionMap, util.actionMapCannonString, false);
ds_map_add(actionMap, util.actionMapActiveString, false);
ds_map_add(actionMap, util.actionMapPassiveString, inactive);

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

//Ship-specific data
//Ricecake
maxHPRicecake = 100;
maxPPRicecake = 100;

maxHPThrustersPortRicecake = 50;
maxHPThrustersStarboardRicecake = 50;
maxHPThrustersBowRicecake = 50;
maxHPThrustersSternRicecake = 50;
maxHPShieldsPortRicecake = 50;
maxHPShieldsStarboardRicecake = 50;
maxHPShieldsBowRicecake = 50;
maxHPShieldsSternRicecake = 50;

cannonCooldownRateRicecake = 0.07

cannonOffsetRiceCake = 11;
cannonDamageRiceCake = 0;
activeDamageRiceCake = 1;

//Sidecar
maxHPSidecar = 150;
maxPPSidecar = 100;

maxHPThrustersPortSidecar = 50;
maxHPThrustersStarboardSidecar = 50;
maxHPThrustersBowSidecar = 50;
maxHPThrustersSternSidecar = 50;
maxHPShieldsPortSidecar = 50;
maxHPShieldsStarboardSidecar = 50;
maxHPShieldsBowSidecar = 50;
maxHPShieldsSternSidecar = 50;

cannonCooldownRateSidecar = 0.07

cannonOffsetSidecar = 11;
cannonDamageSidecar = 0;
activeDamageSidecar = 1;

//Flasher
maxHPFlasher = 200;
maxPPFlasher = 100;

maxHPThrustersPortFlasher = 75;
maxHPThrustersStarboardFlasher = 75;
maxHPThrustersBowFlasher = 75;
maxHPThrustersSternFlasher = 75;
maxHPShieldsPortFlasher = 75;
maxHPShieldsStarboardFlasher = 75;
maxHPShieldsBowFlasher = 75;
maxHPShieldsSternFlasher = 75;

cannonCooldownRateFlasher = 0.07

cannonOffsetFlasher = 11;
cannonDamageFlasher = 0;
activeDamageFlasher = 1;

//Halitosis
maxHPHalitosis = 200;
maxPPHalitosis = 100;

maxHPThrustersPortHalitosis = 75;
maxHPThrustersStarboardHalitosis = 75;
maxHPThrustersBowHalitosis = 75;
maxHPThrustersSternHalitosis = 75;
maxHPShieldsPortHalitosis = 75;
maxHPShieldsStarboardHalitosis = 75;
maxHPShieldsBowHalitosis = 75;
maxHPShieldsSternHalitosis = 75;

cannonCooldownRateHalitosis = 0.07

cannonOffsetHalitosis = 11;
cannonDamageHalitosis = 0;
activeDamageHalitosis = 1;

//Pincer
maxHPPincer = 300;
maxPPPincer = 100;

maxHPThrustersPortPincer = 100;
maxHPThrustersStarboardPincer = 100;
maxHPThrustersBowPincer = 100;
maxHPThrustersSternPincer = 100;
maxHPShieldsPortPincer = 100;
maxHPShieldsStarboardPincer = 100;
maxHPShieldsBowPincer = 100;
maxHPShieldsSternPincer = 100;

cannonCooldownRatePincer = 0.07

cannonOffsetPincer = 11;
cannonDamagePincer = 0;
activeDamagePincer = 1;

//Mezzanine
maxHPMezzanine = 350;
maxPPMezzanine = 100;

maxHPThrustersPortMezzanine = 100;
maxHPThrustersStarboardMezzanine = 100;
maxHPThrustersBowMezzanine = 100;
maxHPThrustersSternMezzanine = 100;
maxHPShieldsPortMezzanine = 100;
maxHPShieldsStarboardMezzanine = 100;
maxHPShieldsBowMezzanine = 100;
maxHPShieldsSternMezzanine = 100;

cannonCooldownRateMezzanine = 0.07

cannonOffsetMezzanine = 11;
cannonDamageMezzanine = 0;
activeDamageMezzanine = 1;

//Pawn
maxHPPawn = 50;
maxPPPawn = 100;
