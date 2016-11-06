//A collection of all the gridBoxes in the room 
gridBoxes = null;

for(i = 0; i < instance_number(objGridBox); i++) {
    gridBoxes[i] = instance_find(objGridBox, i);
}

return gridBoxes;
