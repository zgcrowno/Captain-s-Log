if(position_meeting(x, y, objEnemyShip)) {
    for(var i = 0; i < instance_number(objEnemyShip); i++) {
        if(position_meeting(x, y, instance_find(objEnemyShip, i))) {
            enemy = instance_find(objEnemyShip, i);
            if(player.object_index == objRiceCake) {
                scrRiceCakeCannonBehavior(enemy.x, enemy.y);
            } else if(player.object_index == objSidecar) {
                scrSidecarCannonBehavior(enemy.x, enemy.y);
            }
            instance_destroy();
        }
    }
}
