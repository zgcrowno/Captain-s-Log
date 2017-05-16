if(global.player.object_index == objFlasher) {
    if(global.player.currentState == global.player.activeState) {
        for(var i = 0; i < array_length_1d(gridBoxes); i++) {
            gridBox = gridBoxes[i];
            if(((gridBox.x + (gridBox.sprite_width / 2)) - (global.player.x - global.player.bbox_left)) > global.hud.radarLeftBound
                       && (((gridBox.x + gridBox.sprite_width) - (gridBox.sprite_width / 2)) + (global.player.bbox_right - global.player.x)) < global.hud.radarRightBound
                       && ((gridBox.y + (gridBox.sprite_width / 2)) - (global.player.y - global.player.bbox_top)) > global.hud.radarUpperBound
                       && (((gridBox.y + gridBox.sprite_width) - (gridBox.sprite_width / 2)) + (global.player.bbox_bottom - global.player.y)) < global.hud.radarLowerBound) {
                       draw_set_color(c_yellow);
                with(gridBox) {
                    if(global.player.actionMap[? global.util.actionMapPassiveString] == global.player.active) {
                        if(distance_to_object(global.player) < 5 * sprite_width) {
                            draw_text(view_xport[global.util.radarPort] + x, view_yport[global.util.radarPort] + y, numberString);
                        }
                    } else {
                        if(distance_to_object(global.player) < 3 * sprite_width) {
                            draw_text(view_xport[global.util.radarPort] + x, view_yport[global.util.radarPort] + y, numberString);
                        }
                    }
                }      
            }
        }
    }
    draw_set_color(c_white);
}
