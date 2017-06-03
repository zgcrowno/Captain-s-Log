//TODO: Maybe clean this up. It's possible that the Pawn can function almost exactly like the
//shrimper (with significantly less code). If so, numerous scripts can be deleted.
if(scrMovementChance()) {
    if(object_index == objPawn) {
        if(scrIsFacing(global.player)) {
        
        }
        if(scrIsAbove(global.player)) {
            scrPlayerIsAboveMovementBehavior();    
        } else if(scrIsBelow(global.player)) {
            scrPlayerIsBelowMovementBehavior();
        } else if(scrIsLeft(global.player)) {
            scrPlayerIsLeftMovementBehavior();
        } else {
            scrPlayerIsRightMovementBehavior();
        }
    } else if(object_index == objShrimper) {
        if(scrIsFacing(global.player)) {
            if(actionMap[? global.util.actionMapThrustersPortString] == 0 && actionMap[? global.util.actionMapThrustersStarboardString] == 0) {
                    if(scrIsFacingUp(self)) {
                        if(scrIsLeft(global.player)) {
                            scrThrustersStarboard(irandom_range(ceil(distance_to_point(global.player.x, y) / sprite_get_width(sprGridBox)), ceil(distance_to_point(global.hud.radarLeftBound, y) / sprite_get_width(sprGridBox))));
                        } else if(scrIsRight(global.player)) {
                            scrThrustersPort(irandom_range(ceil(distance_to_point(global.player.x, y) / sprite_get_width(sprGridBox)), ceil(distance_to_point(global.hud.radarRightBound, y) / sprite_get_width(sprGridBox))));
                        }
                    } else if(scrIsFacingLeft(self)) {
                        if(scrIsAbove(global.player)) {
                            scrThrustersPort(irandom_range(ceil(distance_to_point(x, global.player.y) / sprite_get_width(sprGridBox)), ceil(distance_to_point(x, global.hud.radarUpperBound) / sprite_get_width(sprGridBox))));
                        } else if(scrIsBelow(global.player)) {
                            scrThrustersStarboard(irandom_range(ceil(distance_to_point(x, global.player.y) / sprite_get_width(sprGridBox)), ceil(distance_to_point(x, global.hud.radarLowerBound) / sprite_get_width(sprGridBox))));
                        }
                    } else if(scrIsFacingDown(self)) {
                        if(scrIsLeft(global.player)) {
                            scrThrustersPort(irandom_range(ceil(distance_to_point(global.player.x, y) / sprite_get_width(sprGridBox)), ceil(distance_to_point(global.hud.radarLeftBound, y) / sprite_get_width(sprGridBox))));
                        } else if(scrIsRight(global.player)) {
                            scrThrustersStarboard(irandom_range(ceil(distance_to_point(global.player.x, y) / sprite_get_width(sprGridBox)), ceil(distance_to_point(global.hud.radarRightBound, y) / sprite_get_width(sprGridBox))));
                        }
                    } else if(scrIsFacingRight(self)) {
                        if(scrIsAbove(global.player)) {
                            scrThrustersStarboard(irandom_range(ceil(distance_to_point(x, global.player.y) / sprite_get_width(sprGridBox)), ceil(distance_to_point(x, global.hud.radarUpperBound) / sprite_get_width(sprGridBox))));
                        } else if(scrIsBelow(global.player)) {
                            scrThrustersPort(irandom_range(ceil(distance_to_point(x, global.player.y) / sprite_get_width(sprGridBox)), ceil(distance_to_point(x, global.hud.radarLowerBound) / sprite_get_width(sprGridBox))));
                        }
                    }
            }
        } else {
            if(scrEqualChance()) {
                if(actionMap[? global.util.actionMapThrustersClockString] == 0 && actionMap[? global.util.actionMapThrustersCountString] == 0) {
                    scrThrustersRotateClockwise(2);
                }
            } else {
                if(actionMap[? global.util.actionMapThrustersCountString] == 0 && actionMap[? global.util.actionMapThrustersClockString] == 0) {
                    scrThrustersRotateCounterclockwise(2);
                }
            }
        }
    } else if(object_index == objEpitaph) {
        if(target != noone) {
            if(distance_to_object(target) > global.util.epitaphTargetRadius) {
                //Keep an eye on the use of floors and ceils here. It may need to be reworked.
                if(scrIsFacingUp(self)) {
                    if(scrIsLeft(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersStarboardString] == 0) {
                        scrThrustersStarboard(floor(point_distance(x, y, nearestTargetProximalGridBox.x, y) / sprite_get_width(sprGridBox)));
                    } else if(scrIsRight(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersPortString] == 0) {
                        scrThrustersPort(ceil(point_distance(x, y, nearestTargetProximalGridBox.x, y) / sprite_get_width(sprGridBox)));
                    }
                    if(scrIsAbove(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersSternString] == 0) {
                        scrThrustersStern(floor(point_distance(x, y, x, nearestTargetProximalGridBox.y) / sprite_get_width(sprGridBox)));
                    } else if(scrIsBelow(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersBowString] == 0) {
                        scrThrustersBow(ceil(point_distance(x, y, x, nearestTargetProximalGridBox.y) / sprite_get_width(sprGridBox)));
                    }
                } else if(scrIsFacingLeft(self)) {
                    if(scrIsLeft(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersSternString] == 0) {
                        scrThrustersStern(floor(point_distance(x, y, nearestTargetProximalGridBox.x, y) / sprite_get_width(sprGridBox)));
                    } else if(scrIsRight(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersBowString] == 0) {
                        scrThrustersBow(ceil(point_distance(x, y, nearestTargetProximalGridBox.x, y) / sprite_get_width(sprGridBox)));
                    }
                    if(scrIsAbove(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersPortString] == 0) {
                        scrThrustersPort(floor(point_distance(x, y, x, nearestTargetProximalGridBox.y) / sprite_get_width(sprGridBox)));
                    } else if(scrIsBelow(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersStarboardString] == 0) {
                        scrThrustersStarboard(ceil(point_distance(x, y, x, nearestTargetProximalGridBox.y) / sprite_get_width(sprGridBox)));
                    }
                } else if(scrIsFacingDown(self)) {
                    if(scrIsLeft(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersPortString] == 0) {
                        scrThrustersPort(floor(point_distance(x, y, nearestTargetProximalGridBox.x, y) / sprite_get_width(sprGridBox)));
                    } else if(scrIsRight(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersStarboardString] == 0) {
                        scrThrustersStarboard(ceil(point_distance(x, y, nearestTargetProximalGridBox.x, y) / sprite_get_width(sprGridBox)));
                    }
                    if(scrIsAbove(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersBowString] == 0) {
                        scrThrustersBow(floor(point_distance(x, y, x, nearestTargetProximalGridBox.y) / sprite_get_width(sprGridBox)));
                    } else if(scrIsBelow(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersSternString] == 0) {
                        scrThrustersStern(ceil(point_distance(x, y, x, nearestTargetProximalGridBox.y) / sprite_get_width(sprGridBox)));
                    }
                } else if(scrIsFacingRight(self)) {
                    if(scrIsLeft(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersBowString] == 0) {
                        scrThrustersBow(floor(point_distance(x, y, nearestTargetProximalGridBox.x, y) / sprite_get_width(sprGridBox)));
                    } else if(scrIsRight(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersSternString] == 0) {
                        scrThrustersStern(ceil(point_distance(x, y, nearestTargetProximalGridBox.x, y) / sprite_get_width(sprGridBox)));
                    }
                    if(scrIsAbove(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersStarboardString] == 0) {
                        scrThrustersStarboard(floor(point_distance(x, y, x, nearestTargetProximalGridBox.y) / sprite_get_width(sprGridBox)));
                    } else if(scrIsBelow(nearestTargetProximalGridBox) && actionMap[? global.util.actionMapThrustersPortString] == 0) {
                        scrThrustersPort(ceil(point_distance(x, y, x, nearestTargetProximalGridBox.y) / sprite_get_width(sprGridBox)));
                    }
                }
            }
        }
    }
}
