if(actionMap[? "Guns"]) {
    if(object_index == objRiceCake) {
        bullet = instance_create(x, y, objPlayerBullet);
        bullet.alreadyTouchedTimeline = true;
        bullet.image_angle = image_angle;
    } else {
        //To Do: Cases for Other Ships...
    }
}
