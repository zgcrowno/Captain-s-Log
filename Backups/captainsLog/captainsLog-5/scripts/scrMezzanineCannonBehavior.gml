mezzanine = instance_find(objMezzanine, 0);

if(collision_rectangle(x - (sprite_width / 2), 
                       y - (sprite_width / 2), 
                       x + (sprite_width / 2), 
                       y + (sprite_width / 2), 
                       objEnemyShip, 
                       false, 
                       true)) {
    for(i = 0; i < instance_number(objEnemyShip); i++) {
        if(collision_rectangle(x - (sprite_width / 2), 
                               y - (sprite_width / 2), 
                               x + (sprite_width / 2), 
                               y + (sprite_width / 2), 
                               instance_find(objEnemyShip, i), 
                               false, 
                               true)) {
            enemy = instance_find(objEnemyShip, i);
            enemy.currentHP -= mezzanine.cannonDamage;
        }
    }
}
