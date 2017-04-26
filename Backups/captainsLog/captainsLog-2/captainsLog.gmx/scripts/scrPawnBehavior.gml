if(bulletTimer <= 0) {
    instance_create(x, y + (sprite_height / 2), objBullet);
    bulletTimer = 5 * room_speed;
} else {
    bulletTimer--;
}
if(currentHP <= 0) {
    instance_destroy();
}
