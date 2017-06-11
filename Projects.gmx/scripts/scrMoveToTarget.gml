//TODO: modify this to move the portals at different speeds for different difficulties
if(position == left) {
    if(distance_to_point(target.x + 4, target.y + 12) > 10) {
        if(image_angle != 90 && image_angle != 180) {
            image_angle += (90 / distance_to_point(target.x + 3, target.y + 12)) * 10;
        }
        move_towards_point(target.x + 4, target.y + 12, 10);
    } else {
        image_angle = 90;
        x = target.x + 4;
        y = target.y + 12;
    }
} else if(position == right) {
    if(distance_to_point(target.x + 20, target.y + 12) > 10) {
        if(image_angle != 90 && image_angle != 180) {
            image_angle += (90 / distance_to_point(target.x + 20, target.y + 12)) * 10;
        }
        move_towards_point(target.x + 20, target.y + 12, 10);
    } else {
        image_angle = 90;
        x = target.x + 20;
        y = target.y + 12;
    }
} else if(position == bottom) {
    if(distance_to_point(target.x + 12, target.y + 20) > 10) {
        if(image_angle == 90 || image_angle == 180) {
            image_angle -= (90 / distance_to_point(target.x + 12, target.y + 20)) * 10;
        }
        move_towards_point(target.x + 12, target.y + 20, 10);
    } else {
        image_angle = 0;
        x = target.x + 12;
        y = target.y + 20;
    }
} else if(position == top) {
    if(distance_to_point(target.x + 12, target.y + 4) > 10) {
        if(image_angle == 90 || image_angle == 180) {
            image_angle -= (90 / distance_to_point(target.x + 12, target.y + 4)) * 10;
        }
        move_towards_point(target.x + 12, target.y + 4, 10);
    } else {
        image_angle = 0;
        x = target.x + 12;
        y = target.y + 4;
    }
}
