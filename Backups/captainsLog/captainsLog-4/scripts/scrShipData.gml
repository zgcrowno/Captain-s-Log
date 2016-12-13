event_inherited();

//The HUD object
hud = instance_find(objHud, 0);

//The Util Object
util = instance_find(objUtil, 0);

//The ship's action map
ds_map_add(actionMap, "Thrusters Port", 0);
ds_map_add(actionMap, "Thrusters Starboard", 0);
ds_map_add(actionMap, "Thrusters Bow", 0);
ds_map_add(actionMap, "Thrusters Stern", 0);
ds_map_add(actionMap, "Thrusters Count", 0);
ds_map_add(actionMap, "Thrusters Clock", 0);
ds_map_add(actionMap, "Shields Port", false);
ds_map_add(actionMap, "Shields Starboard", false);
ds_map_add(actionMap, "Shields Bow", false);
ds_map_add(actionMap, "Shields Stern", false);
ds_map_add(actionMap, "Shields All", false);
ds_map_add(actionMap, "Cut Thrusters Port", false);
ds_map_add(actionMap, "Cut Thrusters Starboard", false);
ds_map_add(actionMap, "Cut Thrusters Bow", false);
ds_map_add(actionMap, "Cut Thrusters Stern", false);
ds_map_add(actionMap, "Cut Thrusters Count", false);
ds_map_add(actionMap, "Cut Thrusters Clock", false);
ds_map_add(actionMap, "Cut Thrusters Rotate", false);
ds_map_add(actionMap, "Cut Thrusters All", false);
ds_map_add(actionMap, "Cut Shields Port", false);
ds_map_add(actionMap, "Cut Shields Starboard", false);
ds_map_add(actionMap, "Cut Shields Bow", false);
ds_map_add(actionMap, "Cut Shields Stern", false);
ds_map_add(actionMap, "Cut Shields All", false);
ds_map_add(actionMap, "Cut Guns", false);
ds_map_add(actionMap, "Cut Cannon", false);
ds_map_add(actionMap, "Cut Active", false);
ds_map_add(actionMap, "Cut Passive", false);
ds_map_add(actionMap, "Cut Target", false);
ds_map_add(actionMap, "Cut All", false);
ds_map_add(actionMap, "Target", null);
ds_map_add(actionMap, "Guns", false);
ds_map_add(actionMap, "Cannon", false);
ds_map_add(actionMap, "Active", false);
ds_map_add(actionMap, "Passive", false);

//The Grid Boxes That Will Represent the Ship's Shields
portShields = null;
starboardShields = null;
bowShields = null;
sternShields = null;

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

//Gun and cannon states
guns = false;
cannon = false;

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

//The Distances to Cover
distanceToCover = 0;
distanceToCoverPort = 0;
distanceToCoverStarboard = 0;
distanceToCoverBow = 0;
distanceToCoverStern = 0;

//The Degrees to Rotate the Ship
degreesToRotateClockwise = 0;
degreesToRotateCounterclockwise = 0;

//The Degrees Rotated by the Ship
degreesRotatedClockwise = 0;
degreesRotatedCounterclockwise = 0;

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
