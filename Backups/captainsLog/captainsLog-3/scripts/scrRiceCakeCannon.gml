gridBoxes = script_execute(scrGetGridBoxes);

for(i = 0; i < array_length_1d(gridBoxes); i++) {
    if(point_distance(argument0, argument1, gridBoxes[i].x, gridBoxes[i].y) < 100) {
        gridBox = gridBoxes[i];
        instance_create(gridBox.x, gridBox.y, objGridBoxStatic);
    }
}
