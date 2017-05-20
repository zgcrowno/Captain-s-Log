var enemies = scrGetEnemies();

for(var i = 0; i < array_length_1d(enemies); i++) {
    var enemy = enemies[i];
    draw_text(global.hud.commandsRightBound - string_width(enemy.designation), 
              global.hud.commandsUpperBound + (i * string_height(global.util.commandsString)), 
              enemy.designation);
}
