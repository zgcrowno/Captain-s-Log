//Reset the array
enemyArray = 0;

//Assign the array values
for(i = 0; i < instance_number(objEnemyShip); i++) {
    enemyArray[i] = instance_find(objEnemyShip, i);
}
show_debug_message(scrSort(enemyArray));
return scrSort(enemyArray);
