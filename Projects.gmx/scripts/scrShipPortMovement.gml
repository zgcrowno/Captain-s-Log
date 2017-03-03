if(actionMap[? util.actionMapThrustersPortString] > 0) {
    if(!(sin(degtorad(image_angle + 90)) > 0 && x >= (hud.radarRightBound - (sprite_width / 2)))
       && !(sin(degtorad(image_angle + 90)) < 0 && x <= hud.radarLeftBound + (sprite_width / 2))
       && !(cos(degtorad(image_angle + 90)) > 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))
       && !(cos(degtorad(image_angle + 90)) < 0 && y <= hud.radarUpperBound + (sprite_width / 2))) {
        x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
        y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
        view_xview[0] += util.backgroundMovementDistance;
    } else {
        actionMap[? util.actionMapThrustersPortString] = 0;
    }
}
