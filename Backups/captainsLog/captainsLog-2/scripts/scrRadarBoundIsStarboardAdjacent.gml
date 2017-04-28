object = argument0;
return (scrIsFacingUp(object) && (object.bbox_right + sprite_get_width(sprGridBox)) > hud.radarRightBound)
        || (scrIsFacingLeft(object) && (object.bbox_top - sprite_get_width(sprGridBox)) < hud.radarUpperBound)
        || (scrIsFacingDown(object) && (object.bbox_left - sprite_get_width(sprGridBox)) < hud.radarLeftBound)
        || (scrIsFacingRight(object) && (object.bbox_bottom + sprite_get_width(sprGridBox)) > hud.radarLowerBound);
