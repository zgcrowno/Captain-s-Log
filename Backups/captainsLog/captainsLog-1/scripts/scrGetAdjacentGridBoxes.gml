util = instance_find(objUtil, 0);
gridBoxes = script_execute(scrGetGridBoxes);
adjacentGridBoxes = null;
adjacentGridBoxesIndex = 0;
shipSpriteOffset = 0;

if(image_angle % 360 == 0 || image_angle % 360 == 180) {
    shipSpriteOffset = sprite_height / 2;
} else {
    shipSpriteOffset = sprite_width / 2;
}

for(i = 0; i < array_length_1d(gridBoxes); i++) {
    //TODO: Make these values work for all ships
    if(gridBoxes[i].y > y - (util.gridBlockWidth * 2) - shipSpriteOffset
       && gridBoxes[i].y < y + (util.gridBlockWidth) + shipSpriteOffset
       && gridBoxes[i].x > x - (util.gridBlockWidth * 2) - shipSpriteOffset
       && gridBoxes[i].x < x + (util.gridBlockWidth) + shipSpriteOffset
       && !place_meeting(x, y, gridBoxes[i])) {
        adjacentGridBoxes[adjacentGridBoxesIndex] = gridBoxes[i];
        adjacentGridBoxesIndex++;
    }
}

return adjacentGridBoxes;
