if(object_is_ancestor(object_index, objShip)) {
    scrShipMovement();
} else if(object_is_ancestor(object_index, objProjectile)) {
    scrProjectileMovement();
} else if(object_index == objTimelineHorizontal) {
    scrTimelineHorizontalMovement();
} else if(object_index == objTimelineVertical) {
    scrTimelineVerticalMovement();
}
if(image_angle >= 360) {
    image_angle -= floor(image_angle / 360) * 360;
}
