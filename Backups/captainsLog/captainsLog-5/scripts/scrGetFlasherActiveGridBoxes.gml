//A collection of all the gridBoxes in the room 
gridBoxes = scrGetGridBoxes();
returnedGridBoxes = noone;
for(var i = 0; i < array_length_1d(gridBoxes); i++) {
    if(player.actionMap[? util.actionMapPassiveString] == player.active) {
        if(distance_to_object(gridBoxes[i]) < (5 * gridBoxes[i].sprite_width)) {
            returnedGridBoxes[i] = instance_find(objGridBox, i);
        }
    } else {
        if(distance_to_object(gridBoxes[i]) < (3 * gridBoxes[i].sprite_width)) {
            returnedGridBoxes[i] = instance_find(objGridBox, i);
        }
    }
}
return returnedGridBoxes;
