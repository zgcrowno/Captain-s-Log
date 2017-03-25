item = argument0;

if(item.object_index == objGridBox) {
    return item.y < (y - (sprite_height / 2) - sprite_get_width(sprGridBox));
} else {
    return item.y < y;
}
