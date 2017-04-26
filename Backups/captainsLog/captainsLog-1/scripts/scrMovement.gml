if(object_is_ancestor(object_index, objShip)) {
    scrShipMovement();
} else if(object_is_ancestor(object_index, objBullet)) {
    scrBulletMovement();
} else if(object_is_ancestor(object_index, objCannonBullet)) {
    scrCannonBulletMovement();
} else if(object_is_ancestor(object_index, objPlayerEnergyBall)) {
    scrEnergyBallMovement();
} else if(object_index == objTimelineHorizontal) {
    scrTimelineHorizontalMovement();
} else if(object_index == objTimelineVertical) {
    scrTimelineVerticalMovement();
}
if(image_angle >= 360) {
    image_angle -= floor(image_angle / 360) * 360;
}
