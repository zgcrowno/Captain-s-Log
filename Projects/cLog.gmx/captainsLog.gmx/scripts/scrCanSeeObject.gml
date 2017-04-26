playerArg = argument0;
objectArg = argument1;
pointDirection = point_direction(playerArg.x, playerArg.y, objectArg.x, objectArg.y);

if(scrIsFacingUp(playerArg)) {
    if(objectArg.y < playerArg.y) {
        if(pointDirection >= 45 && pointDirection <= 135) {
            return true;
        } else {
            return false;
        }
    }
} else if(scrIsFacingRight(playerArg)) {
    if(objectArg.x > playerArg.x) {
        if((pointDirection >= 0 && pointDirection <= 45)
           || (pointDirection >= 315 && pointDirection <= 360)) {
            return true;
        } else {
            return false;
        }
    }
} else if(scrIsFacingDown(playerArg)) {
    if(objectArg.y > playerArg.y) {
        if(pointDirection >= 225 && pointDirection <= 315) {
            return true;
        } else {
            return false;
        }
    }
} else if(scrIsFacingLeft(playerArg)) {
    if(objectArg.x < playerArg.x) {
        if(pointDirection >= 135 && pointDirection <= 225) {
            return true;
        } else {
            return false;
        }
    }
}
