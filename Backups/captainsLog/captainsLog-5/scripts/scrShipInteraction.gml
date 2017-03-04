if(object_index == objPlayerBullet) {
    if(position_meeting(x, y, objEnemyShip)) {
        for(i = 0; i < instance_number(objEnemyShip); i++) {
            if(position_meeting(x, y, instance_find(objEnemyShip, i))) {
                instance_create(x, y, objPlayerBulletContact);
                enemyShip = instance_find(objEnemyShip, i);
                enemyShip.currentHP -= damage;
                instance_destroy();
            }
        }
    }
} else if(object_index == objPlayerCannonBullet) {
    if(position_meeting(x, y, objEnemyShip)) {
        for(i = 0; i < instance_number(objEnemyShip); i++) {
            if(position_meeting(x, y, instance_find(objEnemyShip, i))) {
                enemy = instance_find(objEnemyShip, i);
                scrRiceCakeCannon(enemy.x, enemy.y);
                instance_destroy();
            }
        }
    }
} else {
    //To Do: Write similar code for when an enemy projectile hits the player ship
}
