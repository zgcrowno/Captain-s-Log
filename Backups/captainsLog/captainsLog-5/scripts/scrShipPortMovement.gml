if(actionMap[? util.actionMapThrustersPortString] > 0) {
    if(!scrRadarBoundIsStarboardAdjacent(self)) {
        //TODO: Prevent sidecar from going outside bounds of radarScreen
        if(object_index == objSidecar && actionMap[? util.actionMapPassiveString] == active) {
            if(actionMap[? util.actionMapThrustersPortString] >= 2) {
                x += (2 * sprite_get_width(sprGridBox)) * sin(degtorad(image_angle + 90));
                y += (2 * sprite_get_width(sprGridBox)) * cos(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_xview[0] += 2 * util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_yview[0] += 2 * util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_xview[0] -= 2 * util.backgroundMovementDistance;
                    } else {
                        view_yview[0] -= 2 * util.backgroundMovementDistance;
                    }
                }
                actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString]))] = util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString] - 1);
                actionMap[? util.actionMapThrustersPortString] -= 1;
            } else {
                x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_xview[0] += util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_yview[0] += util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_xview[0] -= util.backgroundMovementDistance;
                    } else {
                        view_yview[0] -= util.backgroundMovementDistance;
                    }
                }
            }
        } else {
            x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
            y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            if(object_is_ancestor(object_index, objPlayerShip)) {
                if(scrIsFacingUp(self)) {
                    view_xview[0] += util.backgroundMovementDistance;
                } else if(scrIsFacingLeft(self)) {
                    view_yview[0] += util.backgroundMovementDistance;
                } else if(scrIsFacingDown(self)) {
                    view_xview[0] -= util.backgroundMovementDistance;
                } else {
                    view_yview[0] -= util.backgroundMovementDistance;
                }
            }
        }
    } else {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString])));
        actionMap[? util.actionMapThrustersPortString] = 0;
        //TODO: Error about leaving airspace
    }
}
