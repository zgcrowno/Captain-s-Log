if(scrIsPlayerProjectile()) {
    scrPlayerProjectileShipInteraction();
} else if(object_index == objEnemyBullet) {
    scrEnemyBulletShipInteraction();
    scrEnemyBulletShieldsInteraction();
} else if(object_index == objEnemyEnergyBall) {
    scrEnemyEnergyBallShipInteraction();
    scrEnemyEnergyBallShieldsInteraction();
}
