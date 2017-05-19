var strMap = argument0;
var strQueue = noone;

if(strMap == global.util.actionMapThrustersClockString) {
    strQueue = global.util.actionQueueThrustersClockString;
} else if(strMap == global.util.actionMapThrustersCountString) {
    strQueue = global.util.actionQueueThrustersCountString;
}

if(actionMap[? strMap] > 0) {
    if(scrShipIsRotatable(self)) {
        if(object_index == objRiceCake && actionMap[? global.util.actionMapPassiveString] == active) {
            if(actionMap[? strMap] >= 2) {
                image_angle += 180;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[global.util.hudView] += 180;
                }
                scrDecrementAction(strMap, strQueue, false);
            } else {
                if(strMap == global.util.actionMapThrustersClockString) {
                    image_angle += 270;
                    if(object_is_ancestor(object_index, objPlayerShip)) {
                        view_angle[global.util.hudView] += 270;
                    }
                } else if(strMap == global.util.actionMapThrustersCountString) {
                    image_angle += 90;
                    if(object_is_ancestor(object_index, objPlayerShip)) {
                        view_angle[global.util.hudView] += 90
                    }
                }
            }
        } else {
            if(strMap == global.util.actionMapThrustersClockString) {
                image_angle += 270;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[global.util.hudView] += 270;
                }
            } else if(strMap == global.util.actionMapThrustersCountString) {
                image_angle += 90;
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    view_angle[global.util.hudView] += 90
                }
            }
        }
    } else {
        //TODO: error about leaving airspace
    }
}
