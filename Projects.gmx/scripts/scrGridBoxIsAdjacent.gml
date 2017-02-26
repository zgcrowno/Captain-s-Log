gb = argument0;

return gb.y > y - (sprite_get_width(sprGridBox) * 2) - shipSpriteOffset
       && gb.y < y + sprite_get_width(sprGridBox) + shipSpriteOffset
       && gb.x > x - (sprite_get_width(sprGridBox) * 2) - shipSpriteOffset
       && gb.x < x + sprite_get_width(sprGridBox) + shipSpriteOffset
       && !place_meeting(x, y, gb);
