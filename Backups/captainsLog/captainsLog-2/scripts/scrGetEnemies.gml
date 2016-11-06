//A collection of all the enemies in the room 
enemies = null;

for(i = 0; i < instance_number(objEnemyShip); i++) {
    enemies[i] = instance_find(objEnemyShip, i);
}
