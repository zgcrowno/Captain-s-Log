if(actionMap[? global.util.actionMapThrustersClockString] > 0) {
    if(scrShipIsRotatable(self)) {
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
