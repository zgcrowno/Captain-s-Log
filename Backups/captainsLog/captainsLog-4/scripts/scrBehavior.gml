movementChance = random(10) >= 7;
if(movementChance) {
    if(scrIsAbove(player)) {
        if(scrIsFacingUp(self)) {
            if(scrIsLeft(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard(irandom_range(1, 10));
                }
            } else if(scrIsRight(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, 10));
                }
            }
        } else if(scrIsFacingRight(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(scrIsFacingDown(self)) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            } else {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(scrIsFacingLeft(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            }
        }    
    } else if(scrIsBelow(player)) {
        if(scrIsFacingUp(self)) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            } else {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(scrIsFacingRight(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            }
        } else if(scrIsFacingDown(self)) {
            if(scrIsLeft(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard(irandom_range(1, 10));
                }
            } else if(scrIsRight(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, 10));
                }
            }
        } else if(scrIsFacingLeft(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        }
    } else if(scrIsLeft(player)) {
        if(scrIsFacingUp(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(scrIsFacingRight(self)) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            } else {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(scrIsFacingDown(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            }
        } else if(scrIsFacingLeft(self)) {
            if(scrIsAbove(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, 10));
                }
            } else if(scrIsBelow(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard(irandom_range(1, 10));
                }
            }
        }
    } else {
        if(scrIsFacingUp(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            }
        } else if(scrIsFacingRight(self)) {
            if(scrIsAbove(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard(irandom_range(1, 10));
                }
            } else if(scrIsBelow(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, 10));
                }
            }
        } else if(scrIsFacingDown(self)) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(scrIsFacingLeft(self)) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            } else {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        }
    }
}
