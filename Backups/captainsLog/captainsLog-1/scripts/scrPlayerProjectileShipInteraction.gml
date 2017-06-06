var enemyTouching = instance_position(x, y, objEnemyShip);

if(enemyTouching != noone) {
    if(object_index == objPlayerBullet) {
        instance_create(x, y, objPlayerBulletContact);
        if(!(enemyTouching.object_index == objEpitaph && enemyTouching.actionMap[? global.util.actionMapPassiveString] == enemyTouching.inactive)) {
            enemyTouching.currentHP -= damage;
        }
        instance_destroy();
    } else if(object_index == objPlayerCannonBullet) {
        if(global.player.object_index == objRiceCake) {
            scrRiceCakeCannonBehavior(x, y);
        } else if(global.player.object_index == objSidecar) {
            instance_create(x, y, objSidecarCannon);
        }
        instance_destroy();
    } else if(object_index == objPlayerEnergyBall) {
        if(!(enemyTouching.object_index == objEpitaph && enemyTouching.actionMap[? global.util.actionMapPassiveString] == enemyTouching.inactive)) {
            enemyTouching.currentHP -= damage;
        }
    }
}
