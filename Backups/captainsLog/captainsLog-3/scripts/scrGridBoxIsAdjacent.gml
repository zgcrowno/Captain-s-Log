gb = argument0;
spriteOffset = argument1;

return gb.y > y - (sprite_get_width(sprGridBox) * 2) - spriteOffset
       && gb.y < y + sprite_get_width(sprGridBox) + spriteOffset
       && gb.x > x - (sprite_get_width(sprGridBox) * 2) - spriteOffset
       && gb.x < x + sprite_get_width(sprGridBox) + spriteOffset
       && !place_meeting(x, y, gb);
