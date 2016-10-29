specialContact = instance_find(objSpecialRiceCakeContact, 0);
if(bulletTimer <= 0) {
    instance_create(x, y + (sprite_height / 2), objBullet);
    bulletTimer = 5 * room_speed;
} else {
    bulletTimer--;
}
if(currentHP <= 0) {
    instance_destroy();
}
if(position_meeting(x, y, specialContact)) {
    currentHP -= 0.1;
    if(point_distance(x, y, specialContact.x, specialContact.y) > 5) {
        move_towards_point(specialContact.x, specialContact.y, 1);
    } else {
        speed = 0
    }
}
