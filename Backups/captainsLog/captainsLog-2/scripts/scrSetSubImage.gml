if(scrIsFacingUp(objectArray[i])) {
    subImage = global.player.image_angle / 90;
} else if(scrIsFacingRight(objectArray[i])) {
    subImage = (global.player.image_angle / 90) + 1;
    if(subImage == 4) {
        subImage = 0;
    }
} else if(scrIsFacingDown(objectArray[i])) {
    subImage = (global.player.image_angle / 90) + 2;
    if(subImage == 4) {
        subImage = 0;
    } else if(subImage == 5) {
        subImage = 1;
    }
} else {
    subImage = (global.player.image_angle / 90) + 3;
    if(subImage == 4) {
        subImage = 0;
    } else if(subImage == 5) {
        subImage = 1
    } else if(subImage == 6) {
        subImage = 2;
    }
}
