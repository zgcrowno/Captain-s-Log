if(position_meeting(x, y, objPlayerShip)) {
    instance_create(x, y, objPlayerBulletContact);
    player.currentHP -= damage;
    instance_destroy();
}
