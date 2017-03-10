object = argument0;
return (scrIsFacingUp(object) && (object.x - (object.sprite_width / 2) - sprite_get_width(sprGridBox)) < hud.radarLeftBound)
        || (scrIsFacingLeft(object) && (object.y + (object.sprite_width / 2) + sprite_get_width(sprGridBox)) > hud.radarLowerBound)
        || (scrIsFacingDown(object) && (object.x + (object.sprite_width / 2) + sprite_get_width(sprGridBox)) > hud.radarRightBound)
        || (scrIsFacingRight(object) && (object.y - (object.sprite_width / 2) - sprite_get_width(sprGridBox)) < hud.radarUpperBound);
