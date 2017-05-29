maxHP = 150;
maxPP = 100;

currentHP = maxHP;
currentPP = maxPP;

requiredPPThrusters = maxPP / 4;
requiredPPThrustersRotate = maxPP / 2;
requiredPPGuns = maxPP / 2

gunsArray[0] = x + lengthdir_x(len, image_angle + 90);
gunsArray[1] = y + lengthdir_y(len, image_angle + 90);
gunsArray[2] = x + lengthdir_x(hypotenuse, image_angle + 135);
gunsArray[3] = y + lengthdir_y(hypotenuse, image_angle + 135);
gunsArray[4] = x + lengthdir_x(hypotenuse, image_angle + 45);
gunsArray[5] = y + lengthdir_y(hypotenuse, image_angle + 45);

radarSprite = sprShrimper;
radarSpriteTarget = sprShrimperTarget;
backgroundSprite = sprShrimperBackground;
