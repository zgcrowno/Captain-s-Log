if(actionMap[? util.actionMapThrustersClockString] > 0) {
    if(x - (bbox_bottom - y) > hud.radarLeftBound
       && x + (y - bbox_top) < hud.radarRightBound
       && y - (x - bbox_left) > hud.radarUpperBound
       && y + (bbox_right - x) < hud.radarLowerBound) {
        if(object_index == objRiceCake && actionMap[? util.actionMapPassiveString] == active) {
            if(actionMap[? util.actionMapThrustersClockString] >= 2) {
                image_angle += 180;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[0] += 180;
                }
                actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString]))] = util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString] - 1);
                actionMap[? util.actionMapThrustersClockString] -= 1;
            } else {
                image_angle += 270;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[0] += 270;
                }
            }
        } else {
            image_angle += 270;
            if(object_is_ancestor(object_index, objPlayerShip)) {
                view_angle[0] += 270;
            }
        }
    } else {
        //TODO: error about leaving airspace
    }
}
