enemyX = argument0;
enemyY = argument1;
gridBoxes = scrGetGridBoxes();
for(i = 0; i < array_length_1d(gridBoxes); i++) {
    if(point_distance(enemyX, enemyY, gridBoxes[i].x, gridBoxes[i].y) < 100) {
        gridBoxes[i].sprite_index = sprGridBoxStatic;
    }
}
