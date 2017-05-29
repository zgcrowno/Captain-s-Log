if(scrMovementChance()) {
    if(object_index == objPawn) {
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
                if(scrThrustersChance()) {
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
    }
}
