array = argument0;
low = argument1;
high = argument2;
i = low;
j = high;
pivot = floor(low + (high - low) / 2);

while(i <= j) {
    while(point_distance(array[i].x, array[i].y, global.player.x, global.player.y) > point_distance(array[pivot].x, array[pivot].y, global.player.x, global.player.y)) {
        i++;
    }
    while(point_distance(array[j].x, array[j].y, global.player.x, global.player.y) < point_distance(array[pivot].x, array[pivot].y, global.player.x, global.player.y)) {
        j--;
    }
    if(i <= j) {
        scrExchange(array, i, j);
        i++;
        j--;
    }
    if(low < j) {
        scrProximityQuickSort(array, low, j);
    }
    if(i < high) {
        scrProximityQuickSort(array, i, high);
    }
}
return array;
