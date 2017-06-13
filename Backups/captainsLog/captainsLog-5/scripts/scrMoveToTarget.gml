//TODO: modify this to move the portals at different speeds for different difficulties
if(position == left) {
    image_angle = 90;
    x = target.x + 4;
    y = target.y + 12;
} else if(position == right) {
    image_angle = 90;
    x = target.x + 20;
    y = target.y + 12;
} else if(position == bottom) {
    image_angle = 0;
    x = target.x + 12;
    y = target.y + 20;
} else if(position == top) {
    image_angle = 0;
    x = target.x + 12;
    y = target.y + 4;
}
