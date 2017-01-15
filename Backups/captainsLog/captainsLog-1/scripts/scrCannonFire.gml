if(actionMap[? "Cannon"]) {
    if(object_index == objRiceCake) {
        cannonBullet = instance_create(x + lengthdir_x(cannonOffset, image_angle - 90), y + lengthdir_y(cannonOffset, image_angle - 90), objPlayerCannonBullet);
        cannonBullet.alreadyTouchedTimeline = true;
        cannonBullet.image_angle = image_angle + 180;
    } else {
        //To Do: Cases for Other Ships...
    }
}
