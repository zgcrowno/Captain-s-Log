var stringToMatch = argument0;  //This will equal noone in the event that we're checking for digit input

if(stringToMatch != noone) {
    if(keyboard_check_pressed(ord(string_upper(string_char_at(stringToMatch, string_length(input) + 1))))) {
        if(input == "" || input == string_copy(stringToMatch, 1, string_length(input))) {
            input += string_char_at(stringToMatch, string_length(input) + 1);
            exit;
        }
    }
} else {
    if(string_length(input) < 3) {
        if (keyboard_check_pressed(vk_numpad0) || keyboard_check_pressed(48)) {
            input += "0";
        } else if (keyboard_check_pressed(vk_numpad1) || keyboard_check_pressed(49)) {
            input += "1";
        } else if (keyboard_check_pressed(vk_numpad2) || keyboard_check_pressed(50)) {
            input += "2";
        } else if (keyboard_check_pressed(vk_numpad3) || keyboard_check_pressed(51)) {
            input += "3";
        } else if (keyboard_check_pressed(vk_numpad4) || keyboard_check_pressed(52)) {
            input += "4";
        } else if (keyboard_check_pressed(vk_numpad5) || keyboard_check_pressed(53)) {
            input += "5";
        } else if (keyboard_check_pressed(vk_numpad6) || keyboard_check_pressed(54)) {
            input += "6";
        } else if (keyboard_check_pressed(vk_numpad7) || keyboard_check_pressed(55)) {
            input += "7";
        } else if (keyboard_check_pressed(vk_numpad8) || keyboard_check_pressed(56)) {
            input += "8";
        } else if (keyboard_check_pressed(vk_numpad9) || keyboard_check_pressed(57)) {
            input += "9";
        }
    }
}
