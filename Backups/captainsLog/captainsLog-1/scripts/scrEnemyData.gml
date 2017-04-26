event_inherited();

//The Util Object
util = instance_find(objUtil, 0);

player = instance_find(objPlayerShip, 0);
currentHP = 0;
bulletTimer = 0;
designation = ""; 
name = "";

//Enemy-specific data
maxHPPawn = 20;
bulletTimerPawn = 5 * room_speed;
namePawn = "pawn";
