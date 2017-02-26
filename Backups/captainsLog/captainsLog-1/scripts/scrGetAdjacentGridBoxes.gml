util = instance_find(objUtil, 0);
gridBoxes = script_execute(scrGetGridBoxes);
adjacentGridBoxes = noone;
adjacentGridBoxesIndex = 0;
shipSpriteOffset = 0;

if(image_angle % 360 == 0 || image_angle % 360 == 180) {
    shipSpriteOffset = sprite_height / 2;
} else {
    shipSpriteOffset = sprite_width / 2;
}

for(i = 0; i < array_length_1d(gridBoxes); i++) {
    if(scrGridBoxIsAdjacent(gridBoxes[i])) {
        adjacentGridBoxes[adjacentGridBoxesIndex] = gridBoxes[i];
        adjacentGridBoxesIndex++;
    }
}

return adjacentGridBoxes;
