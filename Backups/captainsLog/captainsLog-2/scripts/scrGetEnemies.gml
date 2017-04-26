//Reset the array
enemyArray = 0;

//Assign the array values
for(var i = 0; i < instance_number(objEnemyShip); i++) {
    enemyArray[i] = instance_find(objEnemyShip, i);
}

return enemyArray;
