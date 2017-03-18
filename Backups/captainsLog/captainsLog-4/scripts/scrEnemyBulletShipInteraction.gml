if(position_meeting(x, y, objPlayerShip)) {
    instance_create(x, y, objEnemyBulletContact);
    player.currentHP -= damage;
    instance_destroy();
}
