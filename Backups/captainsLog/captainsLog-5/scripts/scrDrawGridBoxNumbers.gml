if(global.player.object_index == objFlasher) {
    if(global.player.currentState == global.player.activeState) {
        for(var i = 0; i < array_length_1d(global.allGridBoxes); i++) {
            var gridBox = global.allGridBoxes[i];
            with(gridBox) {
                if(scrGridBoxIsTeleportable(gridBox)) {
                    draw_set_color(c_yellow);
                    draw_text(view_xport[global.util.radarPort] + x, view_yport[global.util.radarPort] + y, numberString); 
                }
            }
        }
    }
    draw_set_color(c_white);
}
