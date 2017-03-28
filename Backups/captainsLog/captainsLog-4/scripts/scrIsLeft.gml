item = argument0;

if(item.object_index == objGridBox) {
    return item.x < (x - (sprite_width / 2) - sprite_get_width(sprGridBox));
} else {
    return item.x < x;
}
