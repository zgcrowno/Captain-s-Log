//A collection of all the gridBoxes in the room 
var gridBoxes = noone;

for(var i = 0; i < instance_number(objGridBox); i++) {
    gridBoxes[i] = instance_find(objGridBox, i);
}

return gridBoxes;
