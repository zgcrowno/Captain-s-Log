gridBoxes = scrGetGridBoxes();
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
        if(input == "" || (string_pos(input, string_lower(string_delete(gridBox.numberString, string_length(input) + 1, string_length(gridBox.numberString) - string_length(input)))) != 0)) {
            input += string_lower(string_char_at(gridBox.numberString, string_length(input) + 1));
            break; //Prevent multiple inputs per keyboard press
        }
    } else if(keyboard_check_pressed(vk_enter)) {
        for(var j = 0; j < array_length_1d(gridBoxes); j++) {
            gridBox2 = gridBoxes[j];
            if(input == gridBox2.numberString) {
                if(((gridBox2.x + (gridBox2.sprite_width / 2)) - (x - bbox_left)) > hud.radarLeftBound
                   && (((gridBox2.x + gridBox2.sprite_width) - (gridBox2.sprite_width / 2)) + (bbox_right - x)) < hud.radarRightBound
                   && ((gridBox2.y + (gridBox2.sprite_width / 2)) - (y - bbox_top)) > hud.radarUpperBound
                   && (((gridBox2.y + gridBox2.sprite_width) - (gridBox2.sprite_width / 2)) + (bbox_bottom - y)) < hud.radarLowerBound) {
                    x = gridBox2.x + (gridBox2.sprite_width / 2);
                    y = gridBox2.y + (gridBox2.sprite_width / 2);
                }
            }
        }
        scrSetState(initState);
    }
}

