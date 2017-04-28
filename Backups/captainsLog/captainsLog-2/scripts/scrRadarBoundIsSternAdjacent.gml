object = argument0;
return (scrIsFacingUp(object) && (object.bbox_bottom + sprite_get_height(sprGridBox)) > hud.radarLowerBound)
        || (scrIsFacingLeft(object) && (object.bbox_right + sprite_get_height(sprGridBox)) > hud.radarRightBound)
        || (scrIsFacingDown(object) && (object.bbox_top - sprite_get_height(sprGridBox)) < hud.radarUpperBound)
        || (scrIsFacingRight(object) && (object.bbox_left - sprite_get_height(sprGridBox)) < hud.radarLeftBound);
