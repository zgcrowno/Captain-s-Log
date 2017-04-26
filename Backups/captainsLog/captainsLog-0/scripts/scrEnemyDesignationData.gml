for(i = 0; i < instance_number(objEnemyShip); i++) {
    enemy = instance_find(objEnemyShip, i);
    enemy.designation = enemy.name + string(i);
}
