if(global.player.object_index == objFlasher) {
    if(global.player.currentState == global.player.activeState) {
        for(var i = 0; i < array_length_1d(global.allGridBoxes); i++) {
            var gridBox = global.allGridBoxes[i];
            if(scrGridBoxIsTeleportable(gridBox)) {
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
