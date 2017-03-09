movementChance = random(10) >= 7;
if(movementChance) {
    if(scrIsAbove(player)) {
        show_debug_message("above");
        if(image_angle % 360 == 0) {
            if(scrIsLeft(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard();
                }
            } else if(scrIsRight(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort();
                }
            }
        } else if(image_angle % 270 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise();
            }
        } else if(image_angle % 180 == 0) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise();
            } else {
                scrThrustersRotateCounterclockwise();
            }
        } else if(image_angle % 90 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise();
            }
        }    
    } else if(scrIsBelow(player)) {
        show_debug_message("below");
        if(image_angle % 360 == 0) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise();
            } else {
                scrThrustersRotateCounterclockwise();
            }
        } else if(image_angle % 270 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise();
            }
        } else if(image_angle % 180 == 0) {
            if(scrIsLeft(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard();
                }
            } else if(scrIsRight(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort();
                }
            }
        } else if(image_angle % 90 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise();
            }
        }
    } else if(scrIsLeft(player)) {
        show_debug_message("left");
        if(image_angle % 360 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise();
            }
        } else if(image_angle % 270 == 0) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise();
            } else {
                scrThrustersRotateCounterclockwise();
            }
        } else if(image_angle % 180 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise();
            }
        } else if(image_angle % 90 == 0) {
            if(scrIsAbove(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort();
                }
            } else if(scrIsBelow(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard();
                }
            }
        }
    } else {
        show_debug_message("right");
        if(image_angle % 360 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateClockwise();
            }
        } else if(image_angle % 270 == 0) {
            if(scrIsAbove(player)) {
                if(random(10) >= 3) {
                    scrThrustersStarboard();
                }
            } else if(scrIsBelow(player)) {
                if(random(10) >= 3) {
                    scrThrustersPort();
                }
            }
        } else if(image_angle % 180 == 0) {
            if(random(10) >= 3) {
                scrThrustersRotateCounterclockwise();
            }
        } else if(image_angle % 90 == 0) {
            if(random(10) >= 5) {
                scrThrustersRotateClockwise();
            } else {
                scrThrustersRotateCounterclockwise();
            }
        }
    }
}
