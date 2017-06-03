var enemies = scrGetEnemies();
var epitaphs = noone;
var epitaphsIndex = 0;

for(i = 0; i < array_length_1d(enemies); i++) { 
    var enemy = enemies[i];
    if(enemy.object_index == objEpitaph) {
        epitaphs[epitaphsIndex] = enemy;
        epitaphsIndex++;
    }
}

return epitaphs;
