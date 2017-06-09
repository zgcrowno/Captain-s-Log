if(x > target.x - (3 * target.sprite_width)
   && x < target.x + (4 * target.sprite_width)
   && y > target.y - (3 * target.sprite_width)
   && y < target.y + (4 * target.sprite_width)) {
    return true;
} else {
    return false;
}
