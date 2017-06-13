var enemies = scrGetEnemies();
var infiniteRegresses = noone;
var infiniteRegressesIndex = 0;

for(i = 0; i < array_length_1d(enemies); i++) { 
    var enemy = enemies[i];
    if(enemy.object_index == objInfiniteRegress) {
        infiniteRegresses[infiniteRegressesIndex] = enemy;
        infiniteRegressesIndex++;
    }
}

return infiniteRegresses;
