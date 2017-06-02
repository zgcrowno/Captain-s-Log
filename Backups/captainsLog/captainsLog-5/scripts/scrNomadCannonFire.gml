for(var i = 0; i < 8; i++) {
    var energyBall = instance_create(x, y, objEnemyEnergyBall);
    energyBall.image_angle = image_angle + (i * 45);
}
