str = argument0;
if(string_width(str) > room_width) {
    for(var i = 1; i < string_length(str); i++) {
        if(string_width(string_copy(str, 1, i)) > room_width) {
            string_insert(str, "#", i);
        }
    }
}
return str;
