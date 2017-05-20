var enemyTouching = instance_position(x, y, objEnemyShip);

if(enemyTouching != noone) {
    if(object_index == objPlayerBullet) {
        instance_create(x, y, objPlayerBulletContact);
        enemyTouching.currentHP -= damage;
        instance_destroy();
    } else if(object_index == objPlayerCannonBullet) {
        if(global.player.object_index == objRiceCake) {
            scrRiceCakeCannonBehavior(x, y);
        } else if(global.player.object_index == objSidecar) {
            instance_create(x, y, objSidecarCannon);
        }
        instance_destroy();
    } else if(object_index == objPlayerEnergyBall) {
        enemyTouching.currentHP -= damage;
    }
}
