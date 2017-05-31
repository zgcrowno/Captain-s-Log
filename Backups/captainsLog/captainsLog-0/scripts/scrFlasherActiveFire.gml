//Note that 'j' is used here so as not to interfere with
//exterior loop's 'i' variable
for(var j = 0; j < array_length_1d(gridBoxes); j++) {
    gridBox2 = gridBoxes[j];
    if(global.input == gridBox2.numberString) {
        if(scrGridBoxIsTeleportable(gridBox2)) {
            x = gridBox2.x + (gridBox2.sprite_width / 2);
            y = gridBox2.y + (gridBox2.sprite_width / 2);
            currentPPActive = requiredPPActive;
        }
    }
}
