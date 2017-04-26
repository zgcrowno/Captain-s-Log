//The Captain's Name
designation = "";

//The enemy ships' thrustersHP will always be 100
currentHPThrustersPort = 100;
currentHPThrustersStarboard = 100;
currentHPThrustersBow = 100;
currentHPThrustersStern = 100;

//The color of the enemy's target line
targetLineColor = irandom(1000000);

//The Player Instance
player = instance_find(objPlayerShip, 0);
