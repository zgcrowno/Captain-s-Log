var strMap = argument0;
var strQueue = noone;
var adjacency = noone;

if(strMap == global.util.actionMapThrustersPortString) {
    strQueue = global.util.actionQueueThrustersPortString;
    adjacency = scrRadarBoundIsStarboardAdjacent(self);
} else if(strMap == global.util.actionMapThrustersStarboardString) {
    strQueue = global.util.actionQueueThrustersStarboardString;
    adjacency = scrRadarBoundIsPortAdjacent(self);
} else if(strMap == global.util.actionMapThrustersBowString) {
    strQueue = global.util.actionQueueThrustersBowString;
    adjacency = scrRadarBoundIsSternAdjacent(self);
} else if(strMap == global.util.actionMapThrustersSternString) {
    strQueue = global.util.actionQueueThrustersSternString;
    adjacency = scrRadarBoundIsBowAdjacent(self);
}

if(actionMap[? strMap] > 0) {
    if(!adjacency) {
        //TODO: Prevent sidecar from going outside bounds of radarScreen
        if(object_index == objSidecar && actionMap[? global.util.actionMapPassiveString] == active) {
            if(actionMap[? strMap] >= 2) {
                if(strMap == global.util.actionMapThrustersPortString) {
                    x += (2 * sprite_get_width(sprGridBox)) * sin(degtorad(image_angle + 90));
                    y += (2 * sprite_get_width(sprGridBox)) * cos(degtorad(image_angle + 90));
                    if(object_is_ancestor(object_index, objPlayerShip)) {
                        if(scrIsFacingUp(self)) {
                            view_xview[global.util.hudView] += 2 * global.util.backgroundMovementDistance;
                        } else if(scrIsFacingLeft(self)) {
                            view_yview[global.util.hudView] += 2 * global.util.backgroundMovementDistance;
                        } else if(scrIsFacingDown(self)) {
                            view_xview[global.util.hudView] -= 2 * global.util.backgroundMovementDistance;
                        } else {
                            view_yview[global.util.hudView] -= 2 * global.util.backgroundMovementDistance;
                        }
                    }
                } else if(strMap == global.util.actionMapThrustersStarboardString) {
                    x -= (2 * sprite_get_width(sprGridBox)) * sin(degtorad(image_angle + 90));
                    y -= (2 * sprite_get_width(sprGridBox)) * cos(degtorad(image_angle + 90));
                    if(object_is_ancestor(object_index, objPlayerShip)) {
                        if(scrIsFacingUp(self)) {
                            view_xview[global.util.hudView] -= 2 * global.util.backgroundMovementDistance;
                        } else if(scrIsFacingLeft(self)) {
                            view_yview[global.util.hudView] -= 2 * global.util.backgroundMovementDistance;
                        } else if(scrIsFacingDown(self)) {
                            view_xview[global.util.hudView] += 2 * global.util.backgroundMovementDistance;
                        } else {
                            view_yview[global.util.hudView] += 2 * global.util.backgroundMovementDistance;
                        }
                    }
                } else if(strMap == global.util.actionMapThrustersBowString) {
                    x -= (2 * sprite_get_width(sprGridBox)) * cos(degtorad(image_angle + 90));
                    y += (2 * sprite_get_width(sprGridBox)) * sin(degtorad(image_angle + 90));
                    if(object_is_ancestor(object_index, objPlayerShip)) {
                        if(scrIsFacingUp(self)) {
                            view_yview[global.util.hudView] += 2 * global.util.backgroundMovementDistance;
                        } else if(scrIsFacingLeft(self)) {
                            view_xview[global.util.hudView] -= 2 * global.util.backgroundMovementDistance;
                        } else if(scrIsFacingDown(self)) {
                            view_yview[global.util.hudView] -= 2 * global.util.backgroundMovementDistance;
                        } else {
                            view_xview[global.util.hudView] += 2 * global.util.backgroundMovementDistance;
                        }
                    }
                } else if(strMap == global.util.actionMapThrustersSternString) {
                    x += (2 *sprite_get_width(sprGridBox)) * cos(degtorad(image_angle + 90));
                    y -= (2 * sprite_get_width(sprGridBox)) * sin(degtorad(image_angle + 90));
                    if(object_is_ancestor(object_index, objPlayerShip)) {
                        if(scrIsFacingUp(self)) {
                            view_yview[global.util.hudView] -= 2 * global.util.backgroundMovementDistance;
                        } else if(scrIsFacingLeft(self)) {
                            view_xview[global.util.hudView] += 2 * global.util.backgroundMovementDistance;
                        } else if(scrIsFacingDown(self)) {
                            view_yview[global.util.hudView] += 2 * global.util.backgroundMovementDistance;
                        } else {
                            view_xview[global.util.hudView] -= 2 * global.util.backgroundMovementDistance;
                        }
                    }
                }
                scrDecrementAction(strMap, strQueue, false);
            } else {
                if(strMap == global.util.actionMapThrustersPortString) {
                    x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                    y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                    if(object_is_ancestor(object_index, objPlayerShip)) {
                        if(scrIsFacingUp(self)) {
                            view_xview[global.util.hudView] += global.util.backgroundMovementDistance;
                        } else if(scrIsFacingLeft(self)) {
                            view_yview[global.util.hudView] += global.util.backgroundMovementDistance;
                        } else if(scrIsFacingDown(self)) {
                            view_xview[global.util.hudView] -= global.util.backgroundMovementDistance;
                        } else {
                            view_yview[global.util.hudView] -= global.util.backgroundMovementDistance;
                        }
                    }
                } else if(strMap == global.util.actionMapThrustersStarboardString) {
                    x -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                    y -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                    if(object_is_ancestor(object_index, objPlayerShip)) {
                        if(scrIsFacingUp(self)) {
                            view_xview[global.util.hudView] -= global.util.backgroundMovementDistance;
                        } else if(scrIsFacingLeft(self)) {
                            view_yview[global.util.hudView] -= global.util.backgroundMovementDistance;
                        } else if(scrIsFacingDown(self)) {
                            view_xview[global.util.hudView] += global.util.backgroundMovementDistance;
                        } else {
                            view_yview[global.util.hudView] += global.util.backgroundMovementDistance;
                        }
                    }
                } else if(strMap == global.util.actionMapThrustersBowString) {
                    x -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                    y += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                    if(object_is_ancestor(object_index, objPlayerShip)) {
                        if(scrIsFacingUp(self)) {
                            view_yview[global.util.hudView] += global.util.backgroundMovementDistance;
                        } else if(scrIsFacingLeft(self)) {
                            view_xview[global.util.hudView] -= global.util.backgroundMovementDistance;
                        } else if(scrIsFacingDown(self)) {
                            view_yview[global.util.hudView] -= global.util.backgroundMovementDistance;
                        } else {
                            view_xview[global.util.hudView] += global.util.backgroundMovementDistance;
                        }
                    }
                } else if(strMap == global.util.actionMapThrustersSternString) {
                    x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                    y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                    if(object_is_ancestor(object_index, objPlayerShip)) {
                        if(scrIsFacingUp(self)) {
                            view_yview[global.util.hudView] -= global.util.backgroundMovementDistance;
                        } else if(scrIsFacingLeft(self)) {
                            view_xview[global.util.hudView] += global.util.backgroundMovementDistance;
                        } else if(scrIsFacingDown(self)) {
                            view_yview[global.util.hudView] += global.util.backgroundMovementDistance;
                        } else {
                            view_xview[global.util.hudView] -= global.util.backgroundMovementDistance;
                        }
                    }
                }
            }
        } else {
            if(strMap == global.util.actionMapThrustersPortString) {
                x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_xview[global.util.hudView] += global.util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_yview[global.util.hudView] += global.util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_xview[global.util.hudView] -= global.util.backgroundMovementDistance;
                    } else {
                        view_yview[global.util.hudView] -= global.util.backgroundMovementDistance;
                    }
                }
            } else if(strMap == global.util.actionMapThrustersStarboardString) {
                x -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                y -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_xview[global.util.hudView] -= global.util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_yview[global.util.hudView] -= global.util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_xview[global.util.hudView] += global.util.backgroundMovementDistance;
                    } else {
                        view_yview[global.util.hudView] += global.util.backgroundMovementDistance;
                    }
                }
            } else if(strMap == global.util.actionMapThrustersBowString) {
                x -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                y += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_yview[global.util.hudView] += global.util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_xview[global.util.hudView] -= global.util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_yview[global.util.hudView] -= global.util.backgroundMovementDistance;
                    } else {
                        view_xview[global.util.hudView] += global.util.backgroundMovementDistance;
                    }
                }
            } else if(strMap == global.util.actionMapThrustersSternString) {
                x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                if(object_is_ancestor(object_index, objPlayerShip)) {
                    if(scrIsFacingUp(self)) {
                        view_yview[global.util.hudView] -= global.util.backgroundMovementDistance;
                    } else if(scrIsFacingLeft(self)) {
                        view_xview[global.util.hudView] += global.util.backgroundMovementDistance;
                    } else if(scrIsFacingDown(self)) {
                        view_yview[global.util.hudView] += global.util.backgroundMovementDistance;
                    } else {
                        view_xview[global.util.hudView] -= global.util.backgroundMovementDistance;
                    }
                }
            }
        }
    } else {
        scrDecrementAction(strMap, strQueue, true);
        scrLog(global.util.warnPosition);
    }
}
