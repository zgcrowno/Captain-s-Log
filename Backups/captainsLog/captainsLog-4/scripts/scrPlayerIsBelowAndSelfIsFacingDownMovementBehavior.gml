if(distance_to_point(player.x, y) <= distance_to_point(x, player.y)) {
    if(scrIsLeft(player)) {
        if(actionMap[? util.actionMapThrustersPortString] == 0) {
            if(scrThrustersChance()) {
                scrThrustersPort(irandom_range(1, ceil(distance_to_point(player.x, y) / sprite_get_width(sprGridBox))));
            }
        }
    } else if(scrIsRight(player)) {
        if(actionMap[? util.actionMapThrustersStarboardString] == 0) {
            if(scrThrustersChance()) {
                scrThrustersStarboard(irandom_range(1, ceil(distance_to_point(player.x, y) / sprite_get_width(sprGridBox))));
            }
        }
    }
} else {
    if(scrIsLeft(player)) {
        if(actionMap[? util.actionMapThrustersClockString] == 0) {
            if(scrThrustersChance()) {
                scrThrustersRotateClockwise(1);
            }
        }
    } else if(scrIsRight(player)) {
        if(actionMap[? util.actionMapThrustersCountString] == 0) {
            if(scrThrustersChance()) {
                scrThrustersRotateCounterclockwise(1);
            }
        }
    }
}
