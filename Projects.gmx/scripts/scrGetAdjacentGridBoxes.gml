var gridBoxes = global.allGridBoxes;
var adjacentGridBoxes = noone;
var adjacentGridBoxesIndex = 0;

for(i = 0; i < array_length_1d(gridBoxes); i++) {
    if(scrGridBoxIsAdjacent(gridBoxes[i])) {
        adjacentGridBoxes[adjacentGridBoxesIndex] = gridBoxes[i];
        adjacentGridBoxesIndex++;
    }
}

return adjacentGridBoxes;
