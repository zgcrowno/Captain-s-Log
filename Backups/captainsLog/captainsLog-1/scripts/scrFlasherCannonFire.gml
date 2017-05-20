//TODO: make the static gridboxes change with ship movement
var gridBoxes = global.allGridBoxes;

for(var i = 0; i < array_length_1d(gridBoxes); i++) {
    var gridBox = gridBoxes[i];
    with(gridBox) {
        var player = global.player;
        var offset = noone;
        
        if (scrIsFacingUp(player)) {
            if (scrIsRight(player)) {
                offset = ceil((player.x - x) / sprite_width);
            } else {
                offset = ceil((x - player.x) / sprite_width) + 1;
            }
            if (y < player.bbox_top - sprite_width &&
                (collision_line(player.x, player.y, player.x, global.hud.radarUpperBound, self, false, false) ||
                    place_meeting(x + (offset * sprite_width), y + (offset * sprite_width), player) ||
                    place_meeting(x - (offset * sprite_width), y + (offset * sprite_width), player))) {
                sprite_index = sprGridBoxStatic;
            }
        } else if (scrIsFacingLeft(player)) {
            if (scrIsBelow(player)) {
                offset = ceil((player.y - y) / sprite_width);
            } else {
                offset = ceil((y - player.y) / sprite_width) + 1;
            }
            if (x < player.bbox_left - sprite_width &&
                (collision_line(player.x, player.y, global.hud.radarLeftBound, player.y, self, false, false) ||
                    place_meeting(x + (offset * sprite_width), y + (offset * sprite_width), player) ||
                    place_meeting(x + (offset * sprite_width), y - (offset * sprite_width), player))) {
                sprite_index = sprGridBoxStatic;
            }
        } else if (scrIsFacingDown(player)) {
            if (scrIsRight(player)) {
                offset = ceil((player.x - x) / sprite_width);
            } else {
                offset = ceil((x - player.x) / sprite_width) + 1;
            }
            if (y > player.bbox_bottom &&
                (collision_line(player.x, player.y, player.x, global.hud.radarLowerBound, self, false, false) ||
                    place_meeting(x + (offset * sprite_width), y - (offset * sprite_width), player) ||
                    place_meeting(x - (offset * sprite_width), y - (offset * sprite_width), player))) {
                sprite_index = sprGridBoxStatic;
            }
        } else {
            if (scrIsBelow(player)) {
                offset = ceil((player.y - y) / sprite_width);
            } else {
                offset = ceil((y - player.y) / sprite_width) + 1;
            }
            if (x > player.bbox_right &&
                (collision_line(player.x, player.y, global.hud.radarRightBound, player.y, self, false, false) ||
                    place_meeting(x - (offset * sprite_width), y + (offset * sprite_width), player) ||
                    place_meeting(x - (offset * sprite_width), y - (offset * sprite_width), player))) {
                sprite_index = sprGridBoxStatic;
            }
        }
    }
}
