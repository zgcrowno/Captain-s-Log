var array = argument0;
var value = argument1;

//Note that 'j' is used here so as not to interfere with
//exterior loop's 'i' variable
for(j = 0; j < array_length_1d(array); j++) {
    if(array[j] = value) {
        return true;
    }
}

return false;
