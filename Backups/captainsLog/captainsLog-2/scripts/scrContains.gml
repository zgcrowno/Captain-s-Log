array = argument0;
value = argument1;

//Note that 'j' is used here so as not to interfere with
//exterior loop's 'i' variable
for(var i = 0; i < array_length_1d(array); i++) {
    if(array[i] = value) {
        return true;
    }
}

return false;
