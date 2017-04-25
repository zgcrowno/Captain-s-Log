str = argument0;
if(string_width(str) > room_width) {
    show_debug_message("something");
    for(var i = 1; i < string_length(str); i++) {
        if(string_width(string_copy(str, 1, i)) > room_width) {
            return string_insert(str, "#", i);
        }
    }
} else {
    return str;
}
