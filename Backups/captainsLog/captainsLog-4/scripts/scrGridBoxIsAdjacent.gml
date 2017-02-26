gridBox = argument0;

return gridBox.y > y - (sprite_get_width(sprGridBox) * 2) - shipSpriteOffset
       && gridBox.y < y + sprite_get_width(sprGridBox) + shipSpriteOffset
       && gridBox.x > x - (sprite_get_width(sprGridBox) * 2) - shipSpriteOffset
       && gridBox.x < x + sprite_get_width(sprGridBox) + shipSpriteOffset
       && !place_meeting(x, y, gridBox);
