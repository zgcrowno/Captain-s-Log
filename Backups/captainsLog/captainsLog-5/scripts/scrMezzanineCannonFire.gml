if (sprite_index == sprMezzaninePort) {
    var len = sprite_get_width(sprGridBox);
    var hypotenuse = sqrt(sqr(len * 1.5) + sqr(len * 1.5));
    var cannonObject = instance_create(x + lengthdir_x(hypotenuse, image_angle + 227), y + lengthdir_y(hypotenuse, image_angle + 227), objMezzanineCannon);
    cannonObject.image_angle = image_angle + 180;
} else if (sprite_index == sprMezzanineStarboard) {
    var len = sprite_get_width(sprGridBox);
    var hypotenuse = sqrt(sqr(len * 2.5) + sqr(len * 1.5));
    var cannonObject = instance_create(x + lengthdir_x(hypotenuse, image_angle + 30), y + lengthdir_y(hypotenuse, image_angle + 30), objMezzanineCannon);
    cannonObject.image_angle = image_angle;
} else if (sprite_index == sprMezzanineBow) {
    var len = sprite_get_width(sprGridBox);
    var hypotenuse = sqrt(sqr(len * 2.5) + sqr(len * 1.5));
    var cannonObject = instance_create(x + lengthdir_x(hypotenuse, image_angle + 120), y + lengthdir_y(hypotenuse, image_angle + 120), objMezzanineCannon);
    cannonObject.image_angle = image_angle + 90;
} else if (sprite_index == sprMezzanineStern) {
    var len = sprite_get_width(sprGridBox);
    var hypotenuse = sqrt(sqr(len * 1.5) + sqr(len * 1.5));
    var cannonObject = instance_create(x + lengthdir_x(hypotenuse, image_angle + 316), y + lengthdir_y(hypotenuse, image_angle + 316), objMezzanineCannon);
    cannonObject.image_angle = image_angle + 270;
}
