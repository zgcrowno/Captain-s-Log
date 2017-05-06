if(sprite_index == sprHalitosisPassive) {
    var len = sprite_get_width(sprGridBox);
    var hypotenuse = sqrt(sqr(len) + sqr(2 * len));
    with(collision_line(x, y, x + lengthdir_x(hypotenuse, image_angle + 100), y + lengthdir_y(hypotenuse, image_angle + 100), objProjectile, false, true)) {
        if(object_index == objEnemyBullet) { //TODO: Account for enemy energy balls as well
            instance_destroy();
            if(other.numEnergyBalls < 6) {
                other.numEnergyBalls += 2;
            }
        }
    }
}
