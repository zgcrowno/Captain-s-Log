object = argument0;
return (scrIsFacingUp(object) && (object.bbox_top - sprite_get_height(sprGridBox)) < global.hud.radarUpperBound)
        || (scrIsFacingLeft(object) && (object.bbox_left - sprite_get_height(sprGridBox)) < global.hud.radarLeftBound)
        || (scrIsFacingDown(object) && (object.bbox_bottom + sprite_get_height(sprGridBox)) > global.hud.radarLowerBound)
        || (scrIsFacingRight(object) && (object.bbox_right + sprite_get_height(sprGridBox)) > global.hud.radarRightBound);
