riceCake = instance_find(objRiceCake, 0);
if(collision_rectangle(x - (sprite_width / 2), y - (sprite_width / 2), x + (sprite_width / 2), y + (sprite_width / 2), objEnemyShip, false, true)) {
    for(i = 0; i < instance_number(objEnemyShip); i++) {
        if(position_meeting(x, y, instance_find(objEnemyShip, i))) {
            enemy = instance_find(objEnemyShip, i);
            enemy.currentHP -= riceCake.activeDamage;
        }
    }
}
