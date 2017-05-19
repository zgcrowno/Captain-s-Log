if(actionMap[? global.util.actionMapThrustersCountString] > 0) {
    if(scrShipIsRotatable(self)) {
        if(object_index == objRiceCake && actionMap[? global.util.actionMapPassiveString] == active) {
            if(actionMap[? global.util.actionMapThrustersCountString] >= 2) {
                image_angle += 180;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[global.util.hudView] += 180;
                }
                scrDecrementAction(global.util.actionMapThrustersCountString, global.util.actionQueueThrustersCountString, false);
            } else {
                image_angle += 90;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[global.util.hudView] += 90
                }
            }
        } else {
            image_angle += 90;
            if(object_is_ancestor(object_index, objPlayerShip)) {
                view_angle[global.util.hudView] += 90
            }
        }
    } else {
        //TODO: error about leaving airspace
    }
}
