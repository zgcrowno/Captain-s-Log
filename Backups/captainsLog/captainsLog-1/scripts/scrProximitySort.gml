array = argument0;

if(array == noone || array_length_1d(array) == 0) {
    exit;
} else {
    return scrProximityQuickSort(array, 0, array_length_1d(array) - 1);
}
