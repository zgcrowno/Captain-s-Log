player = instance_find(objPlayerShip, 0);
hud = instance_find(objHud2, 0);
directionOffset = player.image_angle;
enemies = null;

//Add the enemies to the array
for(i = 0; i < instance_number(objEnemyShip); i++) {
    enemies[i] = instance_find(objEnemyShip, i);
}
