movementChance = random(10) >= 7;
if(movementChance) {
    if(scrIsAbove(player)) {
        if(image_angle % 360 == 0) {
            if(scrIsLeft(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard(irandom_range(1, 10));
                }
            } else if(scrIsRight(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, 10));
                }
            }
        } else if(image_angle % 270 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(image_angle % 180 == 0) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            } else {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(image_angle % 90 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            }
        }    
    } else if(scrIsBelow(player)) {
        if(image_angle % 360 == 0) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            } else {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(image_angle % 270 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            }
        } else if(image_angle % 180 == 0) {
            if(scrIsLeft(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard(irandom_range(1, 10));
                }
            } else if(scrIsRight(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, 10));
                }
            }
        } else if(image_angle % 90 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        }
    } else if(scrIsLeft(player)) {
        if(image_angle % 360 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(image_angle % 270 == 0) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            } else {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(image_angle % 180 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            }
        } else if(image_angle % 90 == 0) {
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
        if(image_angle % 360 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            }
        } else if(image_angle % 270 == 0) {
            if(scrIsAbove(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard(irandom_range(1, 10));
                }
            } else if(scrIsBelow(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort(irandom_range(1, 10));
                }
            }
        } else if(image_angle % 180 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        } else if(image_angle % 90 == 0) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise(irandom_range(1, 3));
            } else {
                scrThrustersRotateCounterclockwise(irandom_range(1, 3));
            }
        }
    }
}
