if(actionMap[? "Guns"] == true) {
    if(object_index == objRiceCake) {
        bullet = instance_create(0, 0, objPlayerBullet);
        bullet.image_angle = image_angle;
        bullet.x = x;
        bullet.y = y;
    } else {
        //To Do: Cases for Other Ships...
    }
}
