if(actionMap[? util.actionMapGunsString]) {
    for(i = 0; i < array_length_1d(gunsArray); i += 2) {
        if(object_is_ancestor(object_index, objPlayerShip)) {
            bullet = instance_create(gunsArray[i], gunsArray[i + 1], objPlayerBullet);
            show_debug_message(bullet.x);
            show_debug_message(bullet.y);
        } else {
            bullet = instance_create(gunsArray[i], gunsArray[i + 1], objEnemyBullet);
        }
        bullet.image_angle = image_angle;
    }
}
