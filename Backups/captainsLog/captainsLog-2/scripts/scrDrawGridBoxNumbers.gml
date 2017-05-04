if(player.object_index == objFlasher) {
    if(player.currentState == player.activeState) {
        for(var i = 0; i < array_length_1d(gridBoxes); i++) {
            gridBox = gridBoxes[i];
            if(((gridBox.x + (gridBox.sprite_width / 2)) - (player.x - player.bbox_left)) > hud.radarLeftBound
                       && (((gridBox.x + gridBox.sprite_width) - (gridBox.sprite_width / 2)) + (player.bbox_right - player.x)) < hud.radarRightBound
                       && ((gridBox.y + (gridBox.sprite_width / 2)) - (player.y - player.bbox_top)) > hud.radarUpperBound
                       && (((gridBox.y + gridBox.sprite_width) - (gridBox.sprite_width / 2)) + (player.bbox_bottom - player.y)) < hud.radarLowerBound) {
                       draw_set_color(c_yellow);
                with(gridBox) {
                    player = instance_find(objPlayerShip, 0);
                    if(player.actionMap[? util.actionMapPassiveString] == player.active) {
                        if(distance_to_object(player) < 5 * sprite_width) {
                            draw_text(view_xport[1] + x, view_yport[1] + y, numberString);
                        }
                    } else {
                        if(distance_to_object(player) < 3 * sprite_width) {
                            draw_text(view_xport[1] + x, view_yport[1] + y, numberString);
                        }
                    }
                }      
            }
        }
    }
    draw_set_color(c_white);
}
