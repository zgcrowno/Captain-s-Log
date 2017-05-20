if (sprite_index == sprHalitosis) {
    var len = sprite_get_width(sprGridBox);
    var hypotenuse = sqrt(sqr(len) + sqr(len * 2));
    var lengthDirImageAngle = noone;
    var imageAngle = noone;
    
    for (var i = 0; i < numEnergyBalls; i++) {
        if (i % 2 == 0) {
            lengthDirImageAngle = image_angle + 117;
            if (i == 0) {
                imageAngle = image_angle;
            } else if (i == 2) {
                imageAngle = image_angle + 45;
            } else {
                imageAngle = image_angle + 315;
            }
        } else {
            lengthDirImageAngle = image_angle + 63;
            if (i == 1) {
                imageAngle = image_angle;
            } else if (i == 3) {
                imageAngle = image_angle + 315;
            } else {
                imageAngle = image_angle + 45;
            }
        }
        var energyBall = instance_create(x + lengthdir_x(hypotenuse, lengthDirImageAngle), y + lengthdir_y(hypotenuse, lengthDirImageAngle), objPlayerEnergyBall);
        energyBall.image_angle = imageAngle;
    }
    numEnergyBalls = 2;
} else {
    //TODO: Error about ship form
}
