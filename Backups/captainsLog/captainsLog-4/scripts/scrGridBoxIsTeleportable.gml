var gridBox = argument0;

return ((gridBox.x + (gridBox.sprite_width / 2)) - (global.player.x - global.player.bbox_left)) > global.hud.radarLeftBound
        && (((gridBox.x + gridBox.sprite_width) - (gridBox.sprite_width / 2)) + (global.player.bbox_right - global.player.x)) < global.hud.radarRightBound
        && ((gridBox.y + (gridBox.sprite_width / 2)) - (global.player.y - global.player.bbox_top)) > global.hud.radarUpperBound
        && (((gridBox.y + gridBox.sprite_width) - (gridBox.sprite_width / 2)) + (global.player.bbox_bottom - global.player.y)) < global.hud.radarLowerBound
