if(object_index == objFlasher) {
    gridBoxes = global.allGridBoxes;
    for(var i = 0; i < array_length_1d(gridBoxes); i++) {
        gridBox = gridBoxes[i];
        if(((keyboard_check_pressed(vk_numpad0) || keyboard_check_pressed(48)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "0")
           || ((keyboard_check_pressed(vk_numpad1) || keyboard_check_pressed(49)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "1")
           || ((keyboard_check_pressed(vk_numpad2) || keyboard_check_pressed(50)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "2")
           || ((keyboard_check_pressed(vk_numpad3) || keyboard_check_pressed(51)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "3")
           || ((keyboard_check_pressed(vk_numpad4) || keyboard_check_pressed(52)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "4")
           || ((keyboard_check_pressed(vk_numpad5) || keyboard_check_pressed(53)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "5")
           || ((keyboard_check_pressed(vk_numpad6) || keyboard_check_pressed(54)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "6")
           || ((keyboard_check_pressed(vk_numpad7) || keyboard_check_pressed(55)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "7")
           || ((keyboard_check_pressed(vk_numpad8) || keyboard_check_pressed(56)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "8")
           || ((keyboard_check_pressed(vk_numpad9) || keyboard_check_pressed(57)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "9")) {
            if(actionMap[? global.util.actionMapPassiveString] == active) {
                if(distance_to_object(gridBox) < 5 * gridBox.sprite_width) {
                    if(input == "" || (string_pos(input, string_lower(string_delete(gridBox.numberString, string_length(input) + 1, string_length(gridBox.numberString) - string_length(input)))) != 0)) {
                        input += string_lower(string_char_at(gridBox.numberString, string_length(input) + 1));
                        break; //Prevent multiple inputs per keyboard press
                    }
                }
            } else {
                if(distance_to_object(gridBox) < 3 * gridBox.sprite_width) {
                    if(input == "" || (string_pos(input, string_lower(string_delete(gridBox.numberString, string_length(input) + 1, string_length(gridBox.numberString) - string_length(input)))) != 0)) {
                        input += string_lower(string_char_at(gridBox.numberString, string_length(input) + 1));
                        break; //Prevent multiple inputs per keyboard press
                    }
                }
            }
        } else if(keyboard_check_pressed(vk_enter)) {
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

