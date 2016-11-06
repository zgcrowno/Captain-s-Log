util = instance_find(objUtil, 0);
gridBoxes = script_execute(scrGetGridBoxes);
adjacentGridBoxes = null;
adjacentGridBoxesIndex = 0;

for(i = 0; i < array_length_1d(gridBoxes); i++) {
    //TODO: Make these values work for all ships
    if(gridBoxes[i].y > y - (util.gridBlockWidth * 2)
       && gridBoxes[i].y < y + (util.gridBlockWidth)
       && gridBoxes[i].x > x - (util.gridBlockWidth * 2)
       && gridBoxes[i].x < x + (util.gridBlockWidth)
       && !place_meeting(x, y, gridBoxes[i])) {
        adjacentGridBoxes[adjacentGridBoxesIndex] = gridBoxes[i];
        adjacentGridBoxesIndex++;
    }
}

return adjacentGridBoxes;
