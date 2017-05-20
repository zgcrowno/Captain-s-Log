var enemyX = argument0;
var enemyY = argument1;
for(var i = 0; i < array_length_1d(global.allGridBoxes); i++) {
    var gridBox = global.allGridBoxes[i];
    if(point_distance(enemyX, 
                      enemyY, 
                      gridBox.x, 
                      gridBox.y) < 100) {
        gridBox.sprite_index = sprGridBoxStatic;
        gridBox.alreadyTouchedTimeline = true;
    }
}
