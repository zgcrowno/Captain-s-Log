if(actionMap[? global.util.actionMapThrustersCountString] > 0) {
    if(x - (y - bbox_top) > global.hud.radarLeftBound
       && x + (bbox_bottom - y) < global.hud.radarRightBound
       && y - (bbox_right - x) > global.hud.radarUpperBound
       && y + (x - bbox_left) < global.hud.radarLowerBound) {
        if(object_index == objRiceCake && actionMap[? global.util.actionMapPassiveString] == active) {
            if(actionMap[? global.util.actionMapThrustersCountString] >= 2) {
                image_angle += 180;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[0] += 180;
                }
                scrDecrementAction(global.util.actionMapThrustersCountString, global.util.actionQueueThrustersCountString, false);
            } else {
                image_angle += 90;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[0] += 90
                }
            }
        } else {
            image_angle += 90;
            if(object_is_ancestor(object_index, objPlayerShip)) {
                view_angle[0] += 90
            }
        }
    } else {
        //TODO: error about leaving airspace
    }
}
