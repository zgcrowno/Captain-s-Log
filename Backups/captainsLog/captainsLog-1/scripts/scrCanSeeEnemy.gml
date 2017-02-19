playerArg = argument0;
enemyArg = argument1;
pointDirection = point_direction(playerArg.x, playerArg.y, enemyArg.x, enemyArg.y);

if(playerArg.image_angle % 360 == 0) {
    if(enemyArg.y < playerArg.y) {
        if(pointDirection >= 45 && pointDirection <= 135) {
            return true;
        } else {
            return false;
        }
    }
} else if(playerArg.image_angle % 270 == 0) {
    if(enemyArg.x > playerArg.x) {
        if((pointDirection >= 0 && pointDirection <= 45)
           || (pointDirection >= 315 && pointDirection <= 360)) {
            return true;
        } else {
            return false;
        }
    }
} else if(playerArg.image_angle % 180 == 0) {
    if(enemyArg.y > playerArg.y) {
        if(pointDirection >= 225 && pointDirection <= 315) {
            return true;
        } else {
            return false;
        }
    }
} else if(playerArg.image_angle % 90 == 0) {
    if(enemyArg.x < playerArg.x) {
        if(pointDirection >= 135 && pointDirection <= 225) {
            return true;
        } else {
            return false;
        }
    }
}
