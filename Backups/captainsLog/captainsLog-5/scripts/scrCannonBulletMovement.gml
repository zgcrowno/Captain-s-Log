if(position_meeting(x, y, instance_find(objPlayerShip, 0))) {
    player = instance_find(objPlayerShip, 0);
    x += (sprite_get_width(sprGridBox) - player.cannonOffset) * cos(degtorad(image_angle + 90));
    y -= (sprite_get_width(sprGridBox) - player.cannonOffset) * sin(degtorad(image_angle + 90));
} else {
    x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
    y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
}
