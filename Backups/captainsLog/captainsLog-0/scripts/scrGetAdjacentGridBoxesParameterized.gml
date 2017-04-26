object = argument0;
gridBoxes = scrGetGridBoxes();
adjacentGridBoxes = noone;
adjacentGridBoxesIndex = 0;
objectSpriteOffset = 0;

if(scrIsFacingUp(self) || scrIsFacingDown(self)) {
    objectSpriteOffset = object.sprite_height / 2;
} else {
    objectSpriteOffset = object.sprite_width / 2;
}

for(i = 0; i < array_length_1d(gridBoxes); i++) {
    if(scrGridBoxIsAdjacent(gridBoxes[i], objectSpriteOffset)) {
        adjacentGridBoxes[adjacentGridBoxesIndex] = gridBoxes[i];
        adjacentGridBoxesIndex++;
    }
}

return adjacentGridBoxes;
