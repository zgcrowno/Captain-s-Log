util = instance_find(objUtil, 0);
gridBoxes = allGridBoxes;
adjacentGridBoxes = noone;
adjacentGridBoxesIndex = 0;
shipSpriteOffset = 0;

if(scrIsFacingUp(self) || scrIsFacingDown(self)) {
    shipSpriteOffset = sprite_height / 2;
} else {
    shipSpriteOffset = sprite_width / 2;
}

for(i = 0; i < array_length_1d(gridBoxes); i++) {
    if(scrGridBoxIsAdjacent(gridBoxes[i], shipSpriteOffset)) {
        adjacentGridBoxes[adjacentGridBoxesIndex] = gridBoxes[i];
        adjacentGridBoxesIndex++;
    }
}

return adjacentGridBoxes;
