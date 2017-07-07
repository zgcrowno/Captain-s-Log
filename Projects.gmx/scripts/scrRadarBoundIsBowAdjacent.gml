var ship = argument0;

return (scrIsFacingUp(ship) && (ship.bbox_top - sprite_get_height(sprGridBox)) < global.hud.radarUpperBound)
        || (scrIsFacingLeft(ship) && (ship.bbox_left - sprite_get_height(sprGridBox)) < global.hud.radarLeftBound)
        || (scrIsFacingDown(ship) && (ship.bbox_bottom + sprite_get_height(sprGridBox)) > global.hud.radarLowerBound)
        || (scrIsFacingRight(ship) && (ship.bbox_right + sprite_get_height(sprGridBox)) > global.hud.radarRightBound);
