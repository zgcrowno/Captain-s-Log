if(actionMap[? util.actionMapGunsString]) {
    for(j = 0; j < array_length_1d(gunsArray); j += 2) {
        if(object_is_ancestor(object_index, objPlayerShip)) {
            bullet = instance_create(gunsArray[j], gunsArray[j + 1], objPlayerBullet);
        } else {
            bullet = instance_create(gunsArray[j], gunsArray[j + 1], objEnemyBullet);
        }
        bullet.image_angle = image_angle;
    }
}
