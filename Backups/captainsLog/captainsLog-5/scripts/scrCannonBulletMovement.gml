gridBoxes = allGridBoxes;

x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
for(i = 0; i < array_length_1d(gridBoxes); i++) {
    gridBox = gridBoxes[i];
    if(place_meeting(x, y, gridBox)) {
        x = gridBox.x + (sprite_get_width(sprGridBox) / 2);
        y = gridBox.y + (sprite_get_height(sprGridBox) / 2);
    }
}
