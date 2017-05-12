gb = argument0;

with(gb) {
    if(!place_meeting(x, y, global.player) 
       && (place_meeting(x + sprite_width, y, global.player) 
           || place_meeting(x + sprite_width, y + sprite_width, global.player)
           || place_meeting(x + sprite_width, y - sprite_width, global.player)
           || place_meeting(x, y + sprite_width, global.player)
           || place_meeting(x, y - sprite_width, global.player)
           || place_meeting(x - sprite_width, y, global.player)
           || place_meeting(x - sprite_width, y + sprite_width, global.player)
           || place_meeting(x - sprite_width, y - sprite_width, global.player))) {
        return true;
    } else {
        return false;
    }
}
