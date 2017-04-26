if(actionMap[? util.actionMapCannonString]) {
    if(object_index == objRiceCake) {
        cannonBullet = instance_create(x + lengthdir_x(cannonOffset, image_angle - 90), 
                       y + lengthdir_y(cannonOffset, image_angle - 90), 
                       objPlayerCannonBullet);
        cannonBullet.image_angle = image_angle + 180;
    } else if(object_index == objSidecar) {
        cannonBullet = instance_create(x + lengthdir_x(cannonOffset, image_angle),
                       y + lengthdir_y(cannonOffset, image_angle - 180),
                       objPlayerCannonBullet);
        cannonBullet.image_angle = image_angle;
    } else if(object_index == objFlasher) {
        gridBoxes = scrGetGridBoxes();
        for(var i = 0; i < array_length_1d(gridBoxes); i++) {
            gridBox = gridBoxes[i];
            with(gridBox) {
                offset = noone;
                if(scrIsFacingUp(other)) {
                    if(scrIsRight(other)) {
                        offset = ceil((other.x - x) / sprite_width);
                    } else {
                        offset = ceil((x - other.x) / sprite_width) + 1;
                    }
                    if(y < other.bbox_top - sprite_width 
                       && (collision_line(other.x, other.y, other.x, hud.radarUpperBound, self, false, false)
                           || place_meeting(x + (offset * sprite_width), y + (offset * sprite_width), other)
                           || place_meeting(x - (offset * sprite_width), y + (offset * sprite_width), other))) {
                        sprite_index = sprGridBoxStatic;
                    }
                } else if(scrIsFacingLeft(other)) {
                    if(scrIsBelow(other)) {
                        offset = ceil((other.y - y) / sprite_width);
                    } else {
                        offset = ceil((y - other.y) / sprite_width) + 1;
                    }
                    if(x < other.bbox_left - sprite_width 
                       && (collision_line(other.x, other.y, hud.radarLeftBound, other.y, self, false, false)
                           || place_meeting(x + (offset * sprite_width), y + (offset * sprite_width), other)
                           || place_meeting(x + (offset * sprite_width), y - (offset * sprite_width), other))) {
                        sprite_index = sprGridBoxStatic;
                    }
                } else if(scrIsFacingDown(other)) {
                    if(scrIsRight(other)) {
                        offset = ceil((other.x - x) / sprite_width);
                    } else {
                        offset = ceil((x - other.x) / sprite_width) + 1;
                    }
                    if(y > other.bbox_bottom
                       && (collision_line(other.x, other.y, other.x, hud.radarLowerBound, self, false, false)
                           || place_meeting(x + (offset * sprite_width), y - (offset * sprite_width), other)
                           || place_meeting(x - (offset * sprite_width), y - (offset * sprite_width), other))) {
                        sprite_index = sprGridBoxStatic;
                    }
                } else {
                    if(scrIsBelow(other)) {
                        offset = ceil((other.y - y) / sprite_width);
                    } else {
                        offset = ceil((y - other.y) / sprite_width) + 1;
                    }
                    if(x > other.bbox_right
                       && (collision_line(other.x, other.y, hud.radarRightBound, other.y, self, false, false)
                           || place_meeting(x - (offset * sprite_width), y + (offset * sprite_width), other)
                           || place_meeting(x - (offset * sprite_width), y - (offset * sprite_width), other))) {
                        sprite_index = sprGridBoxStatic;
                    }
                }
            }
        }
    } else if(object_index == objHalitosis) {
        len = sprite_get_width(sprGridBox);
        hypotenuse = sqrt(sqr(len) + sqr(len * 2));
        ballOne = instance_create(x + lengthdir_x(hypotenuse, image_angle + 115), y + lengthdir_y(hypotenuse, image_angle + 115), objPlayerEnergyBall);
        ballTwo = instance_create(x + lengthdir_x(hypotenuse, image_angle + 65), y + lengthdir_y(hypotenuse, image_angle + 65), objPlayerEnergyBall);
        ballOne.image_angle = image_angle;
        ballTwo.image_angle = image_angle;
    } else if(object_index == objPincer) {
        gridBoxes = scrGetGridBoxes();
        for(var i = 0; i < array_length_1d(gridBoxes); i++) {
            gridBox = gridBoxes[i];
            with(gridBox) {
                if(scrIsFacingUp(other)) {
                    if(y < other.y - sprite_width 
                       && (collision_line(other.x, other.y, other.x, hud.radarUpperBound, self, false, false))) {
                        sprite_index = sprGridBoxStatic;
                    }
                } else if(scrIsFacingLeft(other)) {
                    if(x < other.x - sprite_width 
                       && (collision_line(other.x, other.y, hud.radarLeftBound, other.y, self, false, false))) {
                        sprite_index = sprGridBoxStatic;
                    }
                } else if(scrIsFacingDown(other)) {
                    if(y > other.y
                       && (collision_line(other.x, other.y, other.x, hud.radarLowerBound, self, false, false))) {
                        sprite_index = sprGridBoxStatic;
                    }
                } else {
                    if(x > other.x
                       && (collision_line(other.x, other.y, hud.radarRightBound, other.y, self, false, false))) {
                        sprite_index = sprGridBoxStatic;
                    }
                }
            }
        }
    } else if(object_index == objMezzanine) {
    
    }
}
