enemyX = argument0;
enemyY = argument1;
for(var i = 0; i < array_length_1d(allGridBoxes); i++) {
    if(point_distance(enemyX, 
                      enemyY, 
                      allGridBoxes[i].x, 
                      allGridBoxes[i].y) < 100) {
        allGridBoxes[i].sprite_index = sprGridBoxStatic;
        allGridBoxes[i].alreadyTouchedTimeline = true;
    }
}
