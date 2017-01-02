//Reset the array
enemyArray = 0;

//Assigne the array values
for(i = 0; i < instance_number(objEnemyShip); i++) {
    show_debug_message(string(i));
    enemyArray[i] = instance_find(objEnemyShip, i);
}
show_debug_message(enemyArray);
return enemyArray;
