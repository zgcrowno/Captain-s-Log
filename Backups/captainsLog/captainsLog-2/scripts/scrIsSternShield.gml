gridBox = argument0;

with(gridBox) {
    player = instance_find(objPlayerShip, 0);
    if(scrIsFacingUp(player)) {
        if(bbox_right < player.bbox_left && place_meeting(x + sprite_width, y - sprite_width, player) && !place_meeting(x + sprite_width, y, player)) {
            return true;
        } else if(bbox_left > player.bbox_right && place_meeting(x - sprite_width, y - sprite_width, player) && !place_meeting(x - sprite_width, y, player)) {
            return true;
        } else {
            for(var i = 1; i <= ceil(player.sprite_height / sprite_width); i++) {
                if(place_meeting(x, y - (i * sprite_width), player)) {
                    return true;
                }
            }
        }
    } else if(scrIsFacingLeft(player)) {
        if(bbox_bottom < player.bbox_top && place_meeting(x - sprite_width, y + sprite_width, player) && !place_meeting(x, y + sprite_width, player)) {
            return true;
        } else if(bbox_top > player.bbox_bottom && place_meeting(x - sprite_width, y - sprite_width, player) && !place_meeting(x, y - sprite_width, player)) {
            return true;
        } else {
            for(var i = 1; i <= ceil(player.sprite_width / sprite_width); i++) {
                if(place_meeting(x - (i * sprite_width), y, player)) {
                    return true;
                }
            }
        }
    } else if(scrIsFacingDown(player)) {
        if(bbox_right < player.bbox_left && place_meeting(x + sprite_width, y + sprite_width, player) && !place_meeting(x + sprite_width, y, player)) {
            return true;
        } else if(bbox_left > player.bbox_right && place_meeting(x - sprite_width, y + sprite_width, player) && !place_meeting(x - sprite_width, y, player)) {
            return true;
        } else {
            for(var i = 1; i <= ceil(player.sprite_height / sprite_width); i++) {
                if(place_meeting(x, y + (i * sprite_width), player)) {
                    return true;
                }
            }
        }
    } else {
        if(bbox_bottom < player.bbox_top && place_meeting(x + sprite_width, y + sprite_width, player) && !place_meeting(x, y + sprite_width, player)) {
            return true;
        } else if(bbox_top > player.bbox_bottom && place_meeting(x + sprite_width, y - sprite_width, player) && !place_meeting(x, y - sprite_width, player)) {
            return true;
        } else {
            for(var i = 1; i <= ceil(player.sprite_width / sprite_width); i++) {
                if(place_meeting(x + (i * sprite_width), y, player)) {
                    return true;
                }
            }
        }
    }
    return false;
}
