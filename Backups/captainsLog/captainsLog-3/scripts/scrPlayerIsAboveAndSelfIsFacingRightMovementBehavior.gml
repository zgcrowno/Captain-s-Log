if(distance_to_point(global.player.x, y) >= distance_to_point(x, global.player.y)) {
    if(scrIsLeft(global.player)) {
        if(scrEqualChance()) {
            if(actionMap[? global.util.actionMapThrustersClockString] == 0 && actionMap[? global.util.actionMapThrustersCountString] == 0) {
                scrThrustersRotateClockwise(2);
            }
        } else {
            if(actionMap[? global.util.actionMapThrustersCountString] == 0 && actionMap[? global.util.actionMapThrustersClockString] == 0) {
                scrThrustersRotateCounterclockwise(2);
            }
        }
    } else if(scrIsRight(global.player)) {
        if(actionMap[? global.util.actionMapThrustersStarboardString] == 0) {
            if(scrThrustersChance()) {
                scrThrustersStarboard(irandom_range(1, ceil(distance_to_point(global.player.x, y) / sprite_get_width(sprGridBox))));
            }
        }
    }
} else {
    if(actionMap[? global.util.actionMapThrustersStarboardString] == 0) {
        if(scrThrustersChance()) {
            scrThrustersRotateCounterclockwise(1);
        }
    }
}
