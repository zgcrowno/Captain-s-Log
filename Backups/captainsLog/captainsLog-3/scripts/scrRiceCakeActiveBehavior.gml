riceCake = instance_find(objRiceCake, 0);
if(position_meeting(x, y, objEnemyShip)) {
    for(i = 0; i < instance_number(objEnemyShip); i++) {
        if(position_meeting(x, y, instance_find(objEnemyShip, i))) {
            enemy = instance_find(objEnemyShip, i);
            enemy.currentHP -= riceCake.activeDamage;
        }
    }
}
