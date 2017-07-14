//TODO: Use global.util variables for angle degrees.
playerArg = argument0;
objectArg = argument1;
pointDirection = point_direction(playerArg.x, playerArg.y, objectArg.x, objectArg.y);

if(scrIsFacingUp(playerArg)) {
    if(objectArg.y < playerArg.y) {
        if(pointDirection >= 40 && pointDirection <= 140) {
            return true;
        } else {
            return false;
        }
    }
} else if(scrIsFacingRight(playerArg)) {
    if(objectArg.x > playerArg.x) {
        if((pointDirection >= 0 && pointDirection <= 50)
           || (pointDirection >= 310 && pointDirection <= 360)) {
            return true;
        } else {
            return false;
        }
    }
} else if(scrIsFacingDown(playerArg)) {
    if(objectArg.y > playerArg.y) {
        if(pointDirection >= 220 && pointDirection <= 320) {
            return true;
        } else {
            return false;
        }
    }
} else if(scrIsFacingLeft(playerArg)) {
    if(objectArg.x < playerArg.x) {
        if(pointDirection >= 130 && pointDirection <= 230) {
            return true;
        } else {
            return false;
        }
    }
}
