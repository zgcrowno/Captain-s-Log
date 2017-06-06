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
//which died at that gridBox.
target = noone;
nearestTargetProximalGridBox = noone;
toRevive = noone;
deadEnemiesIndex = noone;

radarSprite = sprEpitaph;
radarSpriteTarget = sprEpitaphTarget;
backgroundSprite = sprEpitaphBackground;
