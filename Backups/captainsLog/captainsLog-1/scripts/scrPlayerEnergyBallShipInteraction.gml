var enemyTouching = instance_position(x, y, objEnemyShip);

if(enemyTouching != noone) {
    enemyTouching.currentHP -= damage;
}
