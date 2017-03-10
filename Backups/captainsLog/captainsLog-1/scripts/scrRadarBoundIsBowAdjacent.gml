object = argument0;
return (scrIsFacingUp(object) && (object.y - (object.sprite_height / 2) - sprite_get_height(sprGridBox)) < hud.radarUpperBound)
        || (scrIsFacingLeft(object) && (object.x - (object.sprite_height / 2) - sprite_get_height(sprGridBox)) < hud.radarLeftBound)
        || (scrIsFacingDown(object) && (object.y + (object.sprite_height / 2) + sprite_get_height(sprGridBox)) > hud.radarLowerBound)
        || (scrIsFacingRight(object) && (object.x + (object.sprite_height / 2) + sprite_get_height(sprGridBox)) > hud.radarRightBound);
