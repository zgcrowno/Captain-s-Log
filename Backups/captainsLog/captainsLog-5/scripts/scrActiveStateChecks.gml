if(object_index == objFlasher) {
    gridBoxes = scrGetGridBoxes();
    for(var i = 0; i < array_length_1d(gridBoxes); i++) {
        gridBox = gridBoxes[i];
        if(((keyboard_check_released(vk_numpad0) || keyboard_check_released(48)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "0")
           || ((keyboard_check_released(vk_numpad1) || keyboard_check_released(49)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "1")
           || ((keyboard_check_released(vk_numpad2) || keyboard_check_released(50)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "2")
           || ((keyboard_check_released(vk_numpad3) || keyboard_check_released(51)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "3")
           || ((keyboard_check_released(vk_numpad4) || keyboard_check_released(52)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "4")
           || ((keyboard_check_released(vk_numpad5) || keyboard_check_released(53)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "5")
           || ((keyboard_check_released(vk_numpad6) || keyboard_check_released(54)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "6")
           || ((keyboard_check_released(vk_numpad7) || keyboard_check_released(55)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "7")
           || ((keyboard_check_released(vk_numpad8) || keyboard_check_released(56)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "8")
           || ((keyboard_check_released(vk_numpad9) || keyboard_check_released(57)) && string_char_at(gridBox.numberString, string_length(input) + 1) == "9")) {
            if(((gridBox.x + (gridBox.sprite_width / 2)) - (player.x - player.bbox_left)) > hud.radarLeftBound
                       && (((gridBox.x + gridBox.sprite_width) - (gridBox.sprite_width / 2)) + (player.bbox_right - player.x)) < hud.radarRightBound
                       && ((gridBox.y + (gridBox.sprite_width / 2)) - (player.y - player.bbox_top)) > hud.radarUpperBound
                       && (((gridBox.y + gridBox.sprite_width) - (gridBox.sprite_width / 2)) + (player.bbox_bottom - player.y)) < hud.radarLowerBound) {
                with(gridBox) {
                    player = instance_find(objPlayerShip, 0);
                    if(player.actionMap[? util.actionMapPassiveString] == player.active) {
                        if(distance_to_object(player) < 5 * sprite_width) {
                            if(player.input == "" || (string_pos(player.input, string_lower(string_delete(numberString, string_length(player.input) + 1, string_length(numberString) - string_length(player.input)))) != 0)) {
                                player.input += string_lower(string_char_at(numberString, string_length(player.input) + 1));
                            }
                        }
                    } else {
                        if(distance_to_object(player) < 3 * sprite_width) {
                            if(player.input == "" || (string_pos(player.input, string_lower(string_delete(numberString, string_length(player.input) + 1, string_length(numberString) - string_length(player.input)))) != 0)) {
                                player.input += string_lower(string_char_at(numberString, string_length(player.input) + 1));
                            }
                        }
                    }
                }
            }
        } else if(keyboard_check_released(vk_enter)) {
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
} else if(object_index == objMezzanine) {
    if (input == "") {
        if (keyboard_check_released(ord("P"))) {
            input += "p";
        } else if (keyboard_check_released(ord("S"))) {
            input += "s";
        } else if (keyboard_check_released(ord("B"))) {
            input += "b";
        } else if (keyboard_check_released(ord("R"))) {
            input += "r";
        }
    } else if (input == "p") {
        if (keyboard_check_released(ord("O"))) {
            input += "o";
        }
    } else if (input == "po") {
        if (keyboard_check_released(ord("R"))) {
            input += "r";
        }
    } else if (input == "por") {
        if (keyboard_check_released(ord("T"))) {
            input += "t";
        }
    } else if (input == "s") {
        if (keyboard_check_released(ord("T"))) {
            input += "t";
        }
    } else if (input == "st") {
        if (keyboard_check_released(ord("A"))) {
            input += "a";
        } else if (keyboard_check_released(ord("E"))) {
            input += "e";
        }
    } else if (input == "sta") {
        if (keyboard_check_released(ord("R"))) {
            input += "r";
        }
    } else if (input == "star") {
        if (keyboard_check_released(ord("B"))) {
            input += "b";
        }
    } else if (input == "starb") {
        if (keyboard_check_released(ord("O"))) {
            input += "o";
        }
    } else if (input == "starbo") {
        if (keyboard_check_released(ord("A"))) {
            input += "a";
        }
    } else if (input == "starboa") {
        if (keyboard_check_released(ord("R"))) {
            input += "r";
        }
    } else if (input == "starboar") {
        if (keyboard_check_released(ord("D"))) {
            input += "d";
        }
    } else if (input == "ste") {
        if (keyboard_check_released(ord("R"))) {
            input += "r";
        }
    } else if (input == "ster") {
        if (keyboard_check_released(ord("N"))) {
            input += "n";
        }
    } else if (input == "b") {
        if (keyboard_check_released(ord("O"))) {
            input += "o";
        }
    } else if (input == "bo") {
        if (keyboard_check_released(ord("W"))) {
            input += "w";
        }
    } else if(keyboard_check_released(vk_enter)) {
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

