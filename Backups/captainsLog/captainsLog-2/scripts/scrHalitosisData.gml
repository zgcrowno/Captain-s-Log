maxHP =  200;
maxPP = 100;

currentHP = maxHP;
currentPP = maxPP;

maxHPThrustersPort = 75;
maxHPThrustersStarboard = 75;
maxHPThrustersBow = 75;
maxHPThrustersStern = 75;
maxHPShieldsPort = 75;
maxHPShieldsStarboard = 75;
maxHPShieldsBow = 75;
maxHPShieldsStern = 75;

currentHPThrustersPort = maxHPThrustersPort;
currentHPThrustersStarboard = maxHPThrustersStarboard
currentHPThrustersBow = maxHPThrustersBow
currentHPThrustersStern = maxHPThrustersStern
currentHPShieldsPort = maxHPShieldsPort
currentHPShieldsStarboard = maxHPShieldsStarboard
currentHPShieldsBow = maxHPShieldsBow
currentHPShieldsStern = maxHPShieldsStern

requiredPPThrusters = maxPP / 4;
requiredPPThrustersRotate = maxPP / 2;
requiredPPShields = maxPP / 4;
requiredPPGuns = maxPP / 2;
requiredPPCannon = maxPP * 0.75;
requiredPPActive = maxPP * 0.5;
requiredPPPassive = maxPP * 0.2;

gunsArray[0] = x;
gunsArray[1] = y - 25;
gunsArray[2] = x - 25;
gunsArray[3] = y - 25;
gunsArray[4] = x + 25;
gunsArray[5] = y - 25;

cannonOffset = 11;
cannonDamage = 0;

activeDamage = 1;

numEnergyBalls = 2;
