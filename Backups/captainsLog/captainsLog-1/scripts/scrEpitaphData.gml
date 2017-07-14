maxHP = 250;
maxPP = 100;

currentHP = maxHP;
currentPP = maxPP;

requiredPPThrusters = maxPP / 4;
requiredPPThrustersRotate = maxPP / 2;
requiredPPGuns = maxPP / 2
requiredPPPassive = maxPP * 0.2;

//The target variable represents the gridBox at which the enemy ship died,
//the nearestTargetProximalGridBox variable represents the closest gridBox
//in the target's radius, the toRevive variable represents the enemy ship 
//which died at that gridBox, and the deadEnemiesIndex is for keeping track
//of which index of the global.deadEnemies variable is associated with this 
//epitaph.
target = noone;
nearestTargetProximalGridBox = noone;
toRevive = noone;
deadEnemiesIndex = noone;

hasThrusters = true;
hasGuns = false;
hasCannon = false;
hasActive = false;
hasPassive = true;

radarSprite = sprEpitaph;
radarSpriteTarget = sprEpitaphTarget;
backgroundSprite = sprEpitaphBackground;
