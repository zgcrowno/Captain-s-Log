gb = argument0;

with(gb) {
    if(!place_meeting(x, y, objPlayerShip) 
       && (place_meeting(x + sprite_width, y, objPlayerShip) 
           || place_meeting(x + sprite_width, y + sprite_width, objPlayerShip)
           || place_meeting(x + sprite_width, y - sprite_width, objPlayerShip)
           || place_meeting(x, y + sprite_width, objPlayerShip)
           || place_meeting(x, y - sprite_width, objPlayerShip)
           || place_meeting(x - sprite_width, y, objPlayerShip)
           || place_meeting(x - sprite_width, y + sprite_width, objPlayerShip)
           || place_meeting(x - sprite_width, y - sprite_width, objPlayerShip))) {
        return true;
    } else {
        return false;
    }
}
