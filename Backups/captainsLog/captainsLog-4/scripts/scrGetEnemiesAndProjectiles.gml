var enemies = scrGetEnemies();
var projectiles = scrGetProjectiles();
var array = 0;

for(var i = 0; i < array_length_1d(enemies); i++) {
    array[i] = enemies[i];
}
for(var i = array_length_1d(array); i < array_length_1d(projectiles); i++) {
    array[i] = projectiles[i];
}

return array;
