//This script is meant to be run only by the Halitosis ship
var gridBoxes = scrGetAdjacentGridBoxes();
var projectileConsumptiveGridBoxes = noone;
var index = 0;

for(var i = 0; i < array_length_1d(gridBoxes); i++) {
    var gridBox = gridBoxes[i];
    if(scrGridBoxIsProjectileConsumptive(gridBox)) {
        projectileConsumptiveGridBoxes[index] = gridBox;
        index++;
    } 
}

return projectileConsumptiveGridBoxes;
