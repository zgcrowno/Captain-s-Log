maxHP =  350;
maxPP = 100;

currentHP = maxHP;
currentPP = maxPP;

maxHPThrustersPort = 100;
maxHPThrustersStarboard = 100;
maxHPThrustersBow = 100;
maxHPThrustersStern = 100;
maxHPShieldsPort = 100;
maxHPShieldsStarboard = 100;
maxHPShieldsBow = 100;
maxHPShieldsStern = 100;

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

gunsArray[0] = x - 25;
gunsArray[1] = y - 25;
gunsArray[2] = x;
gunsArray[3] = y - 25;
gunsArray[4] = x + 25;
gunsArray[5] = y - 25;
gunsArray[6] = x;
gunsArray[7] = y;
gunsArray[8] = x + 25;
gunsArray[9] = y;
gunsArray[10] = x + 25;
gunsArray[11] = y + 25;

cannonOffset = 11;
cannonDamage = 3;

activeDamage = 1;
