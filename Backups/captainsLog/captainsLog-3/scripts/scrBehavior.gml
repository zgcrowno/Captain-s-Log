movementChance = random(10) >= 6;
if(movementChance) {
    if(scrIsAbove(player)) {
        if(scrIsFacingUp(self)) {
            if(scrIsLeft(player)) {
                if(actionMap[? util.actionMapThrustersStarboardString == 0]) {
                    if(random(10) >= 3) {
                        scrThrustersStarboard(irandom_range(1, floor(distance_to_point(player.x, y) / sprite_get_width(sprGridBox))));
                    }
                }
            } else if(scrIsRight(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, floor(distance_to_point(player.x, y) / sprite_get_width(sprGridBox))));
                }
            }
        } else if(scrIsFacingRight(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(1);
            }
        } else if(scrIsFacingDown(self)) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(2);
            } else {
                scrThrustersRotateCounterclockwise(2);
            }
        } else if(scrIsFacingLeft(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(1);
            }
        }    
    } else if(scrIsBelow(player)) {
        if(scrIsFacingUp(self)) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(2);
            } else {
                scrThrustersRotateCounterclockwise(2);
            }
        } else if(scrIsFacingRight(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(1);
            }
        } else if(scrIsFacingDown(self)) {
            if(scrIsLeft(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard(irandom_range(1, floor(distance_to_point(player.x, y) / sprite_get_width(sprGridBox))));
                }
            } else if(scrIsRight(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, floor(distance_to_point(player.x, y) / sprite_get_width(sprGridBox))));
                }
            }
        } else if(scrIsFacingLeft(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(1);
            }
        }
    } else if(scrIsLeft(player)) {
        if(scrIsFacingUp(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(1);
            }
        } else if(scrIsFacingRight(self)) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(2);
            } else {
                scrThrustersRotateCounterclockwise(2);
            }
        } else if(scrIsFacingDown(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(1);
            }
        } else if(scrIsFacingLeft(self)) {
            if(scrIsAbove(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, floor(distance_to_point(x, player.y) / sprite_get_width(sprGridBox))));
                }
            } else if(scrIsBelow(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard(irandom_range(1, floor(distance_to_point(x, player.y) / sprite_get_width(sprGridBox))));
                }
            }
        }
    } else {
        if(scrIsFacingUp(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(1);
            }
        } else if(scrIsFacingRight(self)) {
            if(scrIsAbove(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard(irandom_range(1, floor(distance_to_point(x, player.y) / sprite_get_width(sprGridBox))));
                }
            } else if(scrIsBelow(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, floor(distance_to_point(x, player.y) / sprite_get_width(sprGridBox))));
                }
            }
        } else if(scrIsFacingDown(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(1);
            }
        } else if(scrIsFacingLeft(self)) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(2);
            } else {
                scrThrustersRotateCounterclockwise(2);
            }
        }
    }
}
