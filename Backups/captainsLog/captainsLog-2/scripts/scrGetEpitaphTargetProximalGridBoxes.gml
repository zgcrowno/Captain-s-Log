var epitaph = argument0;
var proximalGridBoxes = noone;
var proximalGridBoxesIndex = 0;

for(var i = 0; i < array_length_1d(global.allGridBoxes); i++) {
    var gridBox = global.allGridBoxes[i];
    
    with(gridBox) {
        if(distance_to_object(epitaph.target) < global.util.epitaphTargetRadius) {
            proximalGridBoxes[proximalGridBoxesIndex] = gridBox;
            proximalGridBoxesIndex++;
        }
    }
}

return proximalGridBoxes;
