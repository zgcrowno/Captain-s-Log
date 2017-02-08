if(object_is_ancestor(object_index, objShip)) {
    for(j = 0; j < ds_list_size(actionQueue); j++) {
        if(string_pos("Thrst#Port#", actionQueue[| j]) != 0) {
            if(actionMap[? "Thrusters Port"] > 0) {
                if(!(sin(degtorad(image_angle + 90)) > 0 && x >= (hud.radarRightBound - (sprite_width / 2)))
                   && !(sin(degtorad(image_angle + 90)) < 0 && x <= hud.radarLeftBound + (sprite_width / 2))
                   && !(cos(degtorad(image_angle + 90)) > 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))
                   && !(cos(degtorad(image_angle + 90)) < 0 && y <= hud.radarUpperBound + (sprite_width / 2))) {
                    x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                    y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                } else {
                    actionMap[? "Thrusters Port"] = 0;
                }
            }
        } else if(string_pos("Thrst#Star#", actionQueue[| j]) != 0) {
            if(actionMap[? "Thrusters Starboard"] > 0) {
                if(!(sin(degtorad(image_angle + 90)) > 0 && x <= hud.radarLeftBound + (sprite_width / 2))
                   && !(sin(degtorad(image_angle + 90)) < 0 && x >= (hud.radarRightBound - (sprite_width / 2)))
                   && !(cos(degtorad(image_angle + 90)) > 0 && y <= hud.radarUpperBound + (sprite_width / 2))
                   && !(cos(degtorad(image_angle + 90)) < 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))) {
                    x -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                    y -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                } else {
                    actionMap[? "Thrusters Starboard"] = 0;
                }
            }
        } else if(string_pos("Thrst#Bow#", actionQueue[| j]) != 0) {
            if(actionMap[? "Thrusters Bow"] > 0) {
                if(!(sin(degtorad(image_angle + 90)) > 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))
                   && !(sin(degtorad(image_angle + 90)) < 0 && y <= hud.radarUpperBound + (sprite_width / 2))
                   && !(cos(degtorad(image_angle + 90)) > 0 && x <= hud.radarLeftBound + (sprite_width / 2))
                   && !(cos(degtorad(image_angle + 90)) < 0 && x >= (hud.radarRightBound - (sprite_width / 2)))) {
                    x -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                    y += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                } else {
                    actionMap[? "Thrusters Bow"] = 0;
                }
            }
        } else if(string_pos("Thrst#Stern#", actionQueue[| j]) != 0) {
            if(actionMap[? "Thrusters Stern"] > 0) {
                if(!(sin(degtorad(image_angle + 90)) > 0 && y <= hud.radarUpperBound + (sprite_width / 2))
                   && !(sin(degtorad(image_angle + 90)) < 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))
                   && !(cos(degtorad(image_angle + 90)) > 0 && x >= (hud.radarRightBound - (sprite_width / 2)))
                   && !(cos(degtorad(image_angle + 90)) < 0 && x <= hud.radarLeftBound + (sprite_width / 2))) {
                    x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                    y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                } else {
                    actionMap[? "Thrusters Stern"] = 0;
                }
            }
        } else if(string_pos("Thrst#Clock#", actionQueue[| j]) != 0) {
            if(actionMap[? "Thrusters Clock"] > 0) {
                if(object_index == objRiceCake && actionMap[? "Passive"] == active) {
                    if(actionMap[? "Thrusters Clock"] >= 2) {
                        image_angle -= 180;
                        actionMap[? "Thrusters Clock"] -= 1;
                    } else {
                        image_angle -= 90;
                    }
                } else {
                    image_angle -= 90;
                }
            }
        } else if(string_pos("Thrst#Count#", actionQueue[| j]) != 0) {
            if(actionMap[? "Thrusters Count"] > 0) {
                if(object_index == objRiceCake && actionMap[? "Passive"] == active) {
                    if(actionMap[? "Thrusters Count"] >= 2) {
                        image_angle += 180;
                        actionMap[? "Thrusters Count"] -= 1;
                    } else {
                        image_angle += 90;
                    }
                } else {
                    image_angle += 90;
                }
            }
        }
    } 
} else if(object_is_ancestor(object_index, objBullet)) {
    x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
    y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
} else if(object_is_ancestor(object_index, objCannonBullet)) {
    if(position_meeting(x, y, instance_find(objPlayerShip, 0))) {
        player = instance_find(objPlayerShip, 0);
        x += (sprite_get_width(sprGridBox) - player.cannonOffset) * cos(degtorad(image_angle + 90));
        y -= (sprite_get_width(sprGridBox) - player.cannonOffset) * sin(degtorad(image_angle + 90));
    } else {
        x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
        y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
    }
} else if(object_index == objTimelineHorizontal) {
    if(y < hud.radarLowerBound) {
        y += util.difficultyModifier;
    } else {
        y = hud.radarUpperBound;
    }
} else if(object_index == objTimelineVertical) {
    if(x < hud.radarRightBound) {
        x += util.difficultyModifier;
        x += util.difficultyModifier;
    } else {
        x = hud.radarLeftBound;
    }
}
