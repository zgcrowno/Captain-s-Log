var enemyTouching = instance_position(x, y, objEnemyShip);

if(enemyTouching != noone) {
    if(global.player.object_index == objRiceCake) {
        scrRiceCakeCannonBehavior(x, y);
    } else if(global.player.object_index == objSidecar) {
        instance_create(x, y, objSidecarCannon);
    }
    instance_destroy();
}
