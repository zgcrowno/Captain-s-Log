if(actionMap[? global.util.actionMapThrustersClockString] > 0) {
    if(x - (bbox_bottom - y) > global.hud.radarLeftBound
       && x + (y - bbox_top) < global.hud.radarRightBound
       && y - (x - bbox_left) > global.hud.radarUpperBound
       && y + (bbox_right - x) < global.hud.radarLowerBound) {
        if(object_index == objRiceCake && actionMap[? global.util.actionMapPassiveString] == active) {
            if(actionMap[? global.util.actionMapThrustersClockString] >= 2) {
                image_angle += 180;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[global.util.hudView] += 180;
                }
                scrDecrementAction(global.util.actionMapThrustersClockString, global.util.actionQueueThrustersClockString, false);
            } else {
                image_angle += 270;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[global.util.hudView] += 270;
                }
            }
        } else {
            image_angle += 270;
            if(object_is_ancestor(object_index, objPlayerShip)) {
                view_angle[global.util.hudView] += 270;
            }
        }
    } else {
        //TODO: error about leaving airspace
    }
}
