if(actionMap[? global.util.actionMapThrustersPortString] > 0) {
    if(!scrRadarBoundIsStarboardAdjacent(self)) {
        //TODO: Prevent sidecar from going outside bounds of radarScreen
        if(object_index == objSidecar && actionMap[? global.util.actionMapPassiveString] == active) {
            if(actionMap[? global.util.actionMapThrustersPortString] >= 2) {
                x += (2 * sprite_get_width(sprGridBox)) * sin(degtorad(image_angle + 90));
                y += (2 * sprite_get_width(sprGridBox)) * cos(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_xview[0] += 2 * global.util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_yview[0] += 2 * global.util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_xview[0] -= 2 * global.util.backgroundMovementDistance;
                    } else {
                        view_yview[0] -= 2 * global.util.backgroundMovementDistance;
                    }
                }
                scrDecrementAction(global.util.actionMapThrustersPortString, global.util.actionQueueThrustersPortString, false);
            } else {
                x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_xview[0] += global.util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_yview[0] += global.util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_xview[0] -= global.util.backgroundMovementDistance;
                    } else {
                        view_yview[0] -= global.util.backgroundMovementDistance;
                    }
                }
            }
        } else {
            x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
            y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            if(object_is_ancestor(object_index, objPlayerShip)) {
                if(scrIsFacingUp(self)) {
                    view_xview[0] += global.util.backgroundMovementDistance;
                } else if(scrIsFacingLeft(self)) {
                    view_yview[0] += global.util.backgroundMovementDistance;
                } else if(scrIsFacingDown(self)) {
                    view_xview[0] -= global.util.backgroundMovementDistance;
                } else {
                    view_yview[0] -= global.util.backgroundMovementDistance;
                }
            }
        }
    } else {
        scrDecrementAction(global.util.actionMapThrustersPortString, global.util.actionQueueThrustersPortString, true);
        //TODO: Error about leaving airspace
    }
}
