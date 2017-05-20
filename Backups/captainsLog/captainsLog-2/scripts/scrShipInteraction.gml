if(scrIsPlayerProjectile()) {
    scrPlayerProjectileShipInteraction();
} else if(object_index == objEnemyBullet) {
    scrEnemyBulletShipInteraction();
    scrEnemyBulletShieldsInteraction();
} else {
    //TODO: Write similar code for when an enemy energy ball hits the player ship
}
