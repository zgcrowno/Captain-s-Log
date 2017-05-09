enemyX = argument0;
enemyY = argument1;
for(i = 0; i < array_length_1d(global.allGridBoxes); i++) {
    if(point_distance(enemyX, 
                      enemyY, 
                      global.allGridBoxes[i].x, 
                      global.allGridBoxes[i].y) < 100) {
        global.allGridBoxes[i].sprite_index = sprGridBoxStatic;
        global.allGridBoxes[i].alreadyTouchedTimeline = true;
    }
}
