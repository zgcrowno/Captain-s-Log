var ship = global.player;

if(collision_rectangle(x - (sprite_width / 2), 
                       y - (sprite_width / 2), 
                       x + (sprite_width / 2), 
                       y + (sprite_width / 2), 
                       objEnemyShip, 
                       false, 
                       true)) {
    for(var i = 0; i < instance_number(objEnemyShip); i++) {
        if(collision_rectangle(x - (sprite_width / 2), 
                               y - (sprite_width / 2), 
                               x + (sprite_width / 2), 
                               y + (sprite_width / 2), 
                               instance_find(objEnemyShip, i), 
                               false, 
                               true)) {
            var enemy = instance_find(objEnemyShip, i);
            if(!(enemy.object_index == objEpitaph && enemy.actionMap[? global.util.actionMapPassiveString] == enemy.inactive)) {
                enemy.currentHP -= ship.cannonDamage;
            }
        }
    }
}
