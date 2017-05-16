if(object_index == objFlasher) {
    gridBoxes = global.allGridBoxes;
    for(var i = 0; i < array_length_1d(gridBoxes); i++) {
        gridBox = gridBoxes[i];
        if(actionMap[? global.util.actionMapPassiveString] == active) {
            if(distance_to_object(gridBox) < 5 * gridBox.sprite_width) {
                scrAcceptInput(gridBox.numberString);
            }
        } else {
            if(distance_to_object(gridBox) < 3 * gridBox.sprite_width) {
                scrAcceptInput(gridBox.numberString);
            }
        }
        if(keyboard_check_pressed(vk_enter)) {
            scrActiveFire();
        }
    }
} else if(object_index == objMezzanine) {
    scrAcceptInput(global.util.portStringLower);
    scrAcceptInput(global.util.starboardStringLower);
    scrAcceptInput(global.util.bowStringLower);
    scrAcceptInput(global.util.sternStringLower);
    
    if(keyboard_check_pressed(vk_enter)) {
        scrActiveFire();
    }
}

