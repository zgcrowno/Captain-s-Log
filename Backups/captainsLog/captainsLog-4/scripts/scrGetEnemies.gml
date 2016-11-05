//A collection of all the enemies in the room 
enemies = null;
maxEnemiesDesignationLength = 0;
for(i = 0; i < instance_number(objEnemyShip); i++) {
    enemies[i] = instance_find(objEnemyShip, i);
    if(string_length(enemies[i].designation) > maxEnemiesDesignationLength) {
        maxEnemiesDesignationLength = string_length(enemies[i].designation);
    }
}
