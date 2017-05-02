if(actionMap[? util.actionMapThrustersSternString] > 0) {
    if(!scrRadarBoundIsBowAdjacent(self)) {
        //TODO: Prevent sidecar from going outside bounds of radarScreen
        if(object_index == objSidecar && actionMap[? util.actionMapPassiveString] == active) {
            if(actionMap[? util.actionMapThrustersSternString] >= 2) {
                x += (2 *sprite_get_width(sprGridBox)) * cos(degtorad(image_angle + 90));
                y -= (2 * sprite_get_width(sprGridBox)) * sin(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_yview[0] -= 2 * util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_xview[0] += 2 * util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_yview[0] += 2 * util.backgroundMovementDistance;
                    } else {
                        view_xview[0] -= 2 * util.backgroundMovementDistance;
                    }
                }
                actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString]))] = util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString] - 1);
                actionMap[? util.actionMapThrustersSternString] -= 1;
            } else {
                x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_yview[0] -= util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_xview[0] += util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_yview[0] += util.backgroundMovementDistance;
                    } else {
                        view_xview[0] -= util.backgroundMovementDistance;
                    }
                }
            }
        } else {
            x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
            if(object_is_ancestor(object_index, objPlayerShip)) {
                if(scrIsFacingUp(self)) {
                    view_yview[0] -= util.backgroundMovementDistance;
                } else if(scrIsFacingLeft(self)) {
                    view_xview[0] += util.backgroundMovementDistance;
                } else if(scrIsFacingDown(self)) {
                    view_yview[0] += util.backgroundMovementDistance;
                } else {
                    view_xview[0] -= util.backgroundMovementDistance;
                }
            }
        }
    } else {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString])));
        actionMap[? util.actionMapThrustersSternString] = 0;
        //TODO: Error about leaving airspace
    }
}
