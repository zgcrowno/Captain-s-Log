for(i = 0; i < array_length_1d(enemies); i++) {
    if(keyboard_check_pressed(ord(string_upper(string_char_at(enemies[i].designation, string_length(input) + 1))))) {
        if(input == "" || (string_pos(input, string_lower(string_delete(enemies[i].designation, string_length(input) + 1, string_length(enemies[i].designation) - string_length(input)))) != 0)) {
            input += string_lower(string_char_at(enemies[i].designation, string_length(input) + 1));
        }
    } else if(keyboard_check_pressed(vk_enter)) {
        if(input == string_lower(enemies[i].designation)) {
            target = enemies[i];
            show_debug_message(target.designation);
        }
        script_execute(scrWipeToInitState);
    }
}
