var object = argument0;
return (scrIsFacingUp(object) && (object.bbox_left - sprite_get_width(sprGridBox)) < global.hud.radarLeftBound)
        || (scrIsFacingLeft(object) && (object.bbox_bottom + sprite_get_width(sprGridBox)) > global.hud.radarLowerBound)
        || (scrIsFacingDown(object) && (object.bbox_right + sprite_get_width(sprGridBox)) > global.hud.radarRightBound)
        || (scrIsFacingRight(object) && (object.bbox_top - sprite_get_width(sprGridBox)) < global.hud.radarUpperBound);
