if(sprite_index == sprHalitosisPassive) {
    var gridBoxes = scrGetAdjacentGridBoxes();
    for(var i = 0; i < array_length_1d(gridBoxes); i++) {
        var gridBox = gridBoxes[i];
        var len = gridBox.sprite_width;
        var hypotenuse = sqrt(sqr(len) + sqr(2 * len));
        if(collision_line(x, y, x + lengthdir_x(hypotenuse, image_angle + 100), y + lengthdir_y(hypotenuse, image_angle + 100), gridBox, false, true)
           || collision_line(x, y, x + lengthdir_x(hypotenuse, image_angle + 80), y + lengthdir_y(hypotenuse, image_angle + 80), gridBox, false, true)) {
            with(gridBox) {
                with(instance_position(x, y, objProjectile)) {
                    if(object_index == objEnemyBullet) { //TODO: Account for enemy energy bullets as well
                        instance_destroy();
                    }
                }
            }
        }
    }
}
