if(object_index == objFlasher) {
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
            if(actionMap[? util.actionMapPassiveString] == active) {
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
            for(var j = 0; j < array_length_1d(gridBoxes); j++) {
                gridBox2 = gridBoxes[j];
                if(input == gridBox2.numberString) {
                    if(((gridBox2.x + (gridBox2.sprite_width / 2)) - (x - bbox_left)) > hud.radarLeftBound
                       && (((gridBox2.x + gridBox2.sprite_width) - (gridBox2.sprite_width / 2)) + (bbox_right - x)) < hud.radarRightBound
                       && ((gridBox2.y + (gridBox2.sprite_width / 2)) - (y - bbox_top)) > hud.radarUpperBound
                       && (((gridBox2.y + gridBox2.sprite_width) - (gridBox2.sprite_width / 2)) + (bbox_bottom - y)) < hud.radarLowerBound) {
                        if((actionMap[? util.actionMapPassiveString] == active && distance_to_object(gridBox2) < 5 * gridBox2.sprite_width)
                           || (actionMap[? util.actionMapPassiveString] != active && distance_to_object(gridBox2) < 3 * gridBox2.sprite_width)) {
                            x = gridBox2.x + (gridBox2.sprite_width / 2);
                            y = gridBox2.y + (gridBox2.sprite_width / 2);
                        }
                    }
                }
            }
            scrSetState(initState);
        }
    }
} else if(object_index == objMezzanine) {
    if (input == "") {
        if (keyboard_check_pressed(ord("P"))) {
            input += "p";
        } else if (keyboard_check_pressed(ord("S"))) {
            input += "s";
        } else if (keyboard_check_pressed(ord("B"))) {
            input += "b";
        } else if (keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if (input == "p") {
        if (keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if (input == "po") {
        if (keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if (input == "por") {
        if (keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if (input == "s") {
        if (keyboard_check_pressed(ord("T"))) {
            input += "t";
        }
    } else if (input == "st") {
        if (keyboard_check_pressed(ord("A"))) {
            input += "a";
        } else if (keyboard_check_pressed(ord("E"))) {
            input += "e";
        }
    } else if (input == "sta") {
        if (keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if (input == "star") {
        if (keyboard_check_pressed(ord("B"))) {
            input += "b";
        }
    } else if (input == "starb") {
        if (keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if (input == "starbo") {
        if (keyboard_check_pressed(ord("A"))) {
            input += "a";
        }
    } else if (input == "starboa") {
        if (keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if (input == "starboar") {
        if (keyboard_check_pressed(ord("D"))) {
            input += "d";
        }
    } else if (input == "ste") {
        if (keyboard_check_pressed(ord("R"))) {
            input += "r";
        }
    } else if (input == "ster") {
        if (keyboard_check_pressed(ord("N"))) {
            input += "n";
        }
    } else if (input == "b") {
        if (keyboard_check_pressed(ord("O"))) {
            input += "o";
        }
    } else if (input == "bo") {
        if (keyboard_check_pressed(ord("W"))) {
            input += "w";
        }
    } else if(keyboard_check_pressed(vk_enter)) {
        if(input == "port") {
            sprite_index = sprMezzaninePort;
        } else if(input == "starboard") {
            sprite_index = sprMezzanineStarboard;
        } else if(input == "bow") {
            sprite_index = sprMezzanineBow;
        } else if(input == "stern") {
            sprite_index = sprMezzanineStern;
        } else {
            //TODO: Error about input
        }
        scrSetState(initState);
    }
}

