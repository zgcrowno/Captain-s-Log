var gridBox = argument0;
var distantObject = noone;

if(object_index == objPlayerShip) {
    distantObject = gridBox;
} else if(object_index == objGridBox) {
    distantObject = global.player;
}

var inBounds = ((gridBox.x + (gridBox.sprite_width / 2)) - (global.player.x - global.player.bbox_left)) > global.hud.radarLeftBound
                && (((gridBox.x + gridBox.sprite_width) - (gridBox.sprite_width / 2)) + (global.player.bbox_right - global.player.x)) < global.hud.radarRightBound
                && ((gridBox.y + (gridBox.sprite_width / 2)) - (global.player.y - global.player.bbox_top)) > global.hud.radarUpperBound
                && (((gridBox.y + gridBox.sprite_width) - (gridBox.sprite_width / 2)) + (global.player.bbox_bottom - global.player.y)) < global.hud.radarLowerBound;
var inRange = (global.player.actionMap[? global.util.actionMapPassiveString] == global.player.active && distance_to_object(distantObject) < 5 * gridBox.sprite_width)
               || (global.player.actionMap[? global.util.actionMapPassiveString] != global.player.active && distance_to_object(distantObject) < 3 * gridBox.sprite_width);

return inBounds && inRange;
