//Reset the array
enemyArray = 0;

//Assigne the array values
for(i = 0; i < instance_number(objEnemyShip); i++) {
    enemyArray[i] = instance_find(objEnemyShip, i);
}
return enemyArray;
