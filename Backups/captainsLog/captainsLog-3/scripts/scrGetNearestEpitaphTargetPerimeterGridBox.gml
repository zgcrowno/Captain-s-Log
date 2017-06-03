var nearestGridBox = noone;
var gridBoxes = scrGetEpitaphTargetProximalGridBoxes(self);

for(var i = 0; i < array_length_1d(gridBoxes); i++) {
    var gridBox = gridBoxes[i];
    if(i = 0) {
        nearestGridBox = gridBox;
    } else if(distance_to_object(gridBox) < distance_to_object(gridBoxes[i - 1])) {
        nearestGridBox = gridBox;
    }
}

return nearestGridBox;
