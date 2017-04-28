object = argument0;
return (scrIsFacingUp(object) && (object.bbox_top - sprite_get_height(sprGridBox)) < hud.radarUpperBound)
        || (scrIsFacingLeft(object) && (object.bbox_left - sprite_get_height(sprGridBox)) < hud.radarLeftBound)
        || (scrIsFacingDown(object) && (object.bbox_bottom + sprite_get_height(sprGridBox)) > hud.radarLowerBound)
        || (scrIsFacingRight(object) && (object.bbox_right + sprite_get_height(sprGridBox)) > hud.radarRightBound);
