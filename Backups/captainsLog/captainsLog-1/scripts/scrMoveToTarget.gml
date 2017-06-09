//TODO: modify this to move the portals at different speeds for different difficulties
if(position == left) {
    if(distance_to_point(target.x + 3, target.y + 13) >= 10) {
        if(image_angle != 90) {
            image_angle += (90 / distance_to_point(target.x + 3, target.y + 13)) * 10;
        }
        move_towards_point(target.x + 3, target.y + 13, 10);
    } else if(distance_to_point(target.x + 3, target.y + 13) != 0) {
        if(image_angle != 90) {
            image_angle += (90 / distance_to_point(target.x + 3, target.y + 13));
        }
        move_towards_point(target.x + 3, target.y + 13, 1);
    }
} else if(position == right) {
    if(distance_to_point(target.x + 22, target.y + 13) >= 10) {
        if(image_angle != 90) {
            image_angle += (90 / distance_to_point(target.x + 22, target.y + 13)) * 10;
        }
        move_towards_point(target.x + 22, target.y + 13, 10);
    } else if(distance_to_point(target.x + 22, target.y + 13) != 0) {
        if(image_angle != 90) {
            image_angle += (90 / distance_to_point(target.x + 22, target.y + 13));
        }
        move_towards_point(target.x + 22, target.y + 13, 1);
    }
} else if(position == bottom) {
    if(distance_to_point(target.x + 13, target.y + 22) >= 10) {
        move_towards_point(target.x + 13, target.y + 22, 10);
    } else if(distance_to_point(target.x + 13, target.y + 22) != 0) {
        move_towards_point(target.x + 13, target.y + 22, 1);
    }
} else if(position == top) {
    if(distance_to_point(target.x + 13, target.y + 3) >= 10) {
        move_towards_point(target.x + 13, target.y + 3, 10);
    } else if(distance_to_point(target.x + 13, target.y + 3) != 0) {
        move_towards_point(target.x + 13, target.y + 3, 1);
    }
}
