var ship = argument0;
var strMap = argument1;

if(strMap == global.util.actionMapThrustersClockString) {
    return ship.x - (ship.bbox_bottom - ship.y) > global.hud.radarLeftBound
           && ship.x + (ship.y - ship.bbox_top) < global.hud.radarRightBound
           && ship.y - (ship.x - ship.bbox_left) > global.hud.radarUpperBound
           && ship.y + (ship.bbox_right - ship.x) < global.hud.radarLowerBound
} else if(strMap == global.util.actionMapThrustersCountString) {
    return ship.x - (ship.y - ship.bbox_top) > global.hud.radarLeftBound
           && ship.x + (ship.bbox_bottom - ship.y) < global.hud.radarRightBound
           && ship.y - (ship.bbox_right - ship.x) > global.hud.radarUpperBound
           && ship.y + (ship.x - ship.bbox_left) < global.hud.radarLowerBound
}