if(guns) {
    if(bulletTimer <= 0) {
        instance_create(x, y, objHomingBullet);
        bulletTimer = 5 * room_speed;
    } else {
        bulletTimer--;
    }
    if(!instance_exists(targetID)) {
        guns = false;
        bulletTimer = 0;
        currentPPGuns = 0;
        currentPP += requiredPPGuns;
    }
}

