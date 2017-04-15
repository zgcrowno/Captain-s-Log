array = argument0;
value = argument1;

for(i = 0; i < array_length_1d(array); i++) {
    show_debug_message(i);
    if(array[i] = value) {
        return true;
    }
}

return false;
