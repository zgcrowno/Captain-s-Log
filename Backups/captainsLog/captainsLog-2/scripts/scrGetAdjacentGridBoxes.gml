gridBoxes = scrGetGridBoxes();
adjacentGridBoxes = noone;
adjacentGridBoxesIndex = 0;

for(var i = 0; i < array_length_1d(gridBoxes); i++) {
    if(scrGridBoxIsAdjacent(gridBoxes[i])) {
        adjacentGridBoxes[adjacentGridBoxesIndex] = gridBoxes[i];
        adjacentGridBoxesIndex++;
    }
}

return adjacentGridBoxes;
