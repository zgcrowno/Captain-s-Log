gridBox = argument0;

with(gridBox) {
    if(scrIsFacingUp(global.player)) {
        if(bbox_right < global.player.bbox_left && place_meeting(x + sprite_width, y - sprite_width, global.player) && !place_meeting(x + sprite_width, y, global.player)) {
            return true;
        } else if(bbox_left > global.player.bbox_right && place_meeting(x - sprite_width, y - sprite_width, global.player) && !place_meeting(x - sprite_width, y, global.player)) {
            return true;
        } else {
            for(i = 1; i <= ceil(global.player.sprite_height / sprite_width); i++) {
                if(place_meeting(x, y - (i * sprite_width), global.player)) {
                    return true;
                }
            }
        }
    } else if(scrIsFacingLeft(global.player)) {
        if(bbox_bottom < global.player.bbox_top && place_meeting(x - sprite_width, y + sprite_width, global.player) && !place_meeting(x, y + sprite_width, global.player)) {
            return true;
        } else if(bbox_top > global.player.bbox_bottom && place_meeting(x - sprite_width, y - sprite_width, global.player) && !place_meeting(x, y - sprite_width, global.player)) {
            return true;
        } else {
            for(i = 1; i <= ceil(global.player.sprite_width / sprite_width); i++) {
                if(place_meeting(x - (i * sprite_width), y, global.player)) {
                    return true;
                }
            }
        }
    } else if(scrIsFacingDown(global.player)) {
        if(bbox_right < global.player.bbox_left && place_meeting(x + sprite_width, y + sprite_width, global.player) && !place_meeting(x + sprite_width, y, global.player)) {
            return true;
        } else if(bbox_left > global.player.bbox_right && place_meeting(x - sprite_width, y + sprite_width, global.player) && !place_meeting(x - sprite_width, y, global.player)) {
            return true;
        } else {
            for(i = 1; i <= ceil(global.player.sprite_height / sprite_width); i++) {
                if(place_meeting(x, y + (i * sprite_width), global.player)) {
                    return true;
                }
            }
        }
    } else {
        if(bbox_bottom < global.player.bbox_top && place_meeting(x + sprite_width, y + sprite_width, global.player) && !place_meeting(x, y + sprite_width, global.player)) {
            return true;
        } else if(bbox_top > global.player.bbox_bottom && place_meeting(x + sprite_width, y - sprite_width, global.player) && !place_meeting(x, y - sprite_width, global.player)) {
            return true;
        } else {
            for(i = 1; i <= ceil(global.player.sprite_width / sprite_width); i++) {
                if(place_meeting(x + (i * sprite_width), y, global.player)) {
                    return true;
                }
            }
        }
    }
    return false;
}
