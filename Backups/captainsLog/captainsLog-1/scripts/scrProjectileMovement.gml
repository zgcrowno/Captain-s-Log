if(image_angle % 90 == 0) {
    x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
    y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
} else {
    x += sqrt(sqr(sprite_get_width(sprGridBox)) + sqr(sprite_get_width(sprGridBox))) * cos(degtorad(image_angle + 90));
    y -= sqrt(sqr(sprite_get_width(sprGridBox)) + sqr(sprite_get_width(sprGridBox))) * sin(degtorad(image_angle + 90));
}

var gridBoxTouching = instance_position(x, y, objGridBox);

if(gridBoxTouching != noone) {
    x = gridBoxTouching.x + (sprite_get_width(sprGridBox) / 2);     //Note: This is causing the projectiles' background sprites to appear off.
    y = gridBoxTouching.y + (sprite_get_height(sprGridBox) / 2);
}
