playerArg = argument0;
objectArg = argument1;
pointDirection = point_direction(playerArg.x, playerArg.y, objectArg.x, objectArg.y);

if(playerArg.image_angle % 360 == 0) {
    if(objectArg.y < playerArg.y) {
        if(pointDirection >= 45 && pointDirection <= 135) {
            return true;
        } else {
            return false;
        }
    }
} else if(playerArg.image_angle % 270 == 0) {
    if(objectArg.x > playerArg.x) {
        if((pointDirection >= 0 && pointDirection <= 45)
           || (pointDirection >= 315 && pointDirection <= 360)) {
            return true;
        } else {
            return false;
        }
    }
} else if(playerArg.image_angle % 180 == 0) {
    if(objectArg.y > playerArg.y) {
        if(pointDirection >= 225 && pointDirection <= 315) {
            return true;
        } else {
            return false;
        }
    }
} else if(playerArg.image_angle % 90 == 0) {
    if(objectArg.x < playerArg.x) {
        if(pointDirection >= 135 && pointDirection <= 225) {
            return true;
        } else {
            return false;
        }
    }
}
