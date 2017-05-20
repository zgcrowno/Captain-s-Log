var enemyTouching = instance_position(x, y, objEnemyShip);

if(enemyTouching != noone) {
    instance_create(x, y, objPlayerBulletContact);
    enemyTouching.currentHP -= damage;
    instance_destroy();
}
