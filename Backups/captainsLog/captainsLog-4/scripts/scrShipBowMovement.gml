if(actionMap[? global.util.actionMapThrustersBowString] > 0) {
    if(!scrRadarBoundIsSternAdjacent(self)) {
        //TODO: Prevent sidecar from going outside bounds of radarScreen
        if(object_index == objSidecar && actionMap[? global.util.actionMapPassiveString] == active) {
            if(actionMap[? global.util.actionMapThrustersBowString] >= 2) {
                x -= (2 * sprite_get_width(sprGridBox)) * cos(degtorad(image_angle + 90));
                y += (2 * sprite_get_width(sprGridBox)) * sin(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_yview[0] += 2 * global.util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_xview[0] -= 2 * global.util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_yview[0] -= 2 * global.util.backgroundMovementDistance;
                    } else {
                        view_xview[0] += 2 * global.util.backgroundMovementDistance;
                    }
                }
                actionQueue[| ds_list_find_index(actionQueue, global.util.actionQueueThrustersBowString + string(actionMap[? global.util.actionMapThrustersBowString]))] = global.util.actionQueueThrustersBowString + string(actionMap[? global.util.actionMapThrustersBowString] - 1);
                actionMap[? global.util.actionMapThrustersBowString] -= 1;
            } else {
                x -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                y += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_yview[0] += global.util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_xview[0] -= global.util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_yview[0] -= global.util.backgroundMovementDistance;
                    } else {
                        view_xview[0] += global.util.backgroundMovementDistance;
                    }
                }
            }
        } else {
            x -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            y += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
            if(object_is_ancestor(object_index, objPlayerShip)) {
                if(scrIsFacingUp(self)) {
                    view_yview[0] += global.util.backgroundMovementDistance;
                } else if(scrIsFacingLeft(self)) {
                    view_xview[0] -= global.util.backgroundMovementDistance;
                } else if(scrIsFacingDown(self)) {
                    view_yview[0] -= global.util.backgroundMovementDistance;
                } else {
                    view_xview[0] += global.util.backgroundMovementDistance;
                }
            }
        }
    } else {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, global.util.actionQueueThrustersBowString + string(actionMap[? global.util.actionMapThrustersBowString])));
        actionMap[? global.util.actionMapThrustersBowString] = 0;
        //TODO: Error about leaving airspace
    }
}
