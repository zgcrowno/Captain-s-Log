if(distance_to_point(global.player.x, y) >= distance_to_point(x, global.player.y)) {
    if(scrIsAbove(global.player)) {
        if(actionMap[? global.util.actionMapThrustersPortString] == 0) {
            if(scrThrustersChance()) {
                scrThrustersPort(irandom_range(1, ceil(distance_to_point(x, global.player.y) / sprite_get_width(sprGridBox))));
            }
        }
    } else if(scrIsBelow(global.player)) {
        if(actionMap[? global.util.actionMapThrustersStarboardString] == 0) {
            if(scrThrustersChance()) {
                scrThrustersStarboard(irandom_range(1, ceil(distance_to_point(x, global.player.y) / sprite_get_width(sprGridBox))));
            }
        }
    }
} else {
    if(scrIsAbove(global.player)) {
        if(actionMap[? global.util.actionMapThrustersClockString] == 0) {
            if(scrThrustersChance()) {
                scrThrustersRotateClockwise(1);
            }
        }
    } else if(scrIsBelow(global.player)) {
        if(actionMap[? global.util.actionMapThrustersCountString] == 0) {
            if(scrThrustersChance()) {
                scrThrustersRotateCounterclockwise(1);
            }
        }
    }
}
