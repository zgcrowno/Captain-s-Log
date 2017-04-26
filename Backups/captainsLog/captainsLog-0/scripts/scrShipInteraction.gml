if(object_index == objPlayerBullet) {
    scrPlayerBulletShipInteraction();
} else if(object_index == objPlayerCannonBullet) {
    scrPlayerCannonBulletShipInteraction();
} else if(object_index == objPlayerEnergyBall) {
    scrPlayerEnergyBallShipInteraction();
} else if(object_index == objEnemyBullet) {
    scrEnemyBulletShipInteraction();
    scrEnemyBulletShieldsInteraction();
} else {
    //To Do: Write similar code for when an enemy projectile hits the player ship
}
