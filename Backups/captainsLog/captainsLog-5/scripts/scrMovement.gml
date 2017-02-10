if(object_is_ancestor(object_index, objShip)) {
    for(j = 0; j < ds_list_size(actionQueue); j++) {
        if(string_pos(util.actionQueueThrustersPortString, actionQueue[| j]) != 0) {
            if(actionMap[? util.actionMapThrustersPortString] > 0) {
                if(!(sin(degtorad(image_angle + 90)) > 0 && x >= (hud.radarRightBound - (sprite_width / 2)))
                   && !(sin(degtorad(image_angle + 90)) < 0 && x <= hud.radarLeftBound + (sprite_width / 2))
                   && !(cos(degtorad(image_angle + 90)) > 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))
                   && !(cos(degtorad(image_angle + 90)) < 0 && y <= hud.radarUpperBound + (sprite_width / 2))) {
                    x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                    y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                } else {
                    actionMap[? util.actionMapThrustersPortString] = 0;
                }
            }
        } else if(string_pos(util.actionQueueThrustersStarboardString, actionQueue[| j]) != 0) {
            if(actionMap[? util.actionMapThrustersStarboardString] > 0) {
                if(!(sin(degtorad(image_angle + 90)) > 0 && x <= hud.radarLeftBound + (sprite_width / 2))
                   && !(sin(degtorad(image_angle + 90)) < 0 && x >= (hud.radarRightBound - (sprite_width / 2)))
                   && !(cos(degtorad(image_angle + 90)) > 0 && y <= hud.radarUpperBound + (sprite_width / 2))
                   && !(cos(degtorad(image_angle + 90)) < 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))) {
                    x -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                    y -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                } else {
                    actionMap[? util.actionMapThrustersStarboardString] = 0;
                }
            }
        } else if(string_pos(util.actionQueueThrustersBowString, actionQueue[| j]) != 0) {
            if(actionMap[? util.actionMapThrustersBowString] > 0) {
                if(!(sin(degtorad(image_angle + 90)) > 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))
                   && !(sin(degtorad(image_angle + 90)) < 0 && y <= hud.radarUpperBound + (sprite_width / 2))
                   && !(cos(degtorad(image_angle + 90)) > 0 && x <= hud.radarLeftBound + (sprite_width / 2))
                   && !(cos(degtorad(image_angle + 90)) < 0 && x >= (hud.radarRightBound - (sprite_width / 2)))) {
                    x -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                    y += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                } else {
                    actionMap[? util.actionMapThrustersBowString] = 0;
                }
            }
        } else if(string_pos(util.actionQueueThrustersSternString, actionQueue[| j]) != 0) {
            if(actionMap[? util.actionMapThrustersSternString] > 0) {
                if(!(sin(degtorad(image_angle + 90)) > 0 && y <= hud.radarUpperBound + (sprite_width / 2))
                   && !(sin(degtorad(image_angle + 90)) < 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))
                   && !(cos(degtorad(image_angle + 90)) > 0 && x >= (hud.radarRightBound - (sprite_width / 2)))
                   && !(cos(degtorad(image_angle + 90)) < 0 && x <= hud.radarLeftBound + (sprite_width / 2))) {
                    x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                    y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                } else {
                    actionMap[? util.actionMapThrustersSternString] = 0;
                }
            }
        } else if(string_pos(util.actionQueueThrustersClockString, actionQueue[| j]) != 0) {
            if(actionMap[? util.actionMapThrustersClockString] > 0) {
                if(object_index == objRiceCake && actionMap[? util.actionMapPassiveString] == active) {
                    if(actionMap[? util.actionMapThrustersClockString] >= 2) {
                        image_angle -= 180;
                        actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString]))] = util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString] - 1);
                        actionMap[? util.actionMapThrustersClockString] -= 1;
                    } else {
                        image_angle -= 90;
                    }
                } else {
                    image_angle -= 90;
                }
            }
        } else if(string_pos(util.actionQueueThrustersCountString, actionQueue[| j]) != 0) {
            if(actionMap[? util.actionMapThrustersCountString] > 0) {
                if(object_index == objRiceCake && actionMap[? util.actionMapPassiveString] == active) {
                    if(actionMap[? util.actionMapThrustersCountString] >= 2) {
                        image_angle += 180;
                        actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString]))] = util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString] - 1);
                        actionMap[? util.actionMapThrustersCountString] -= 1;
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
    if(x <= hud.radarRightBound) {
        x += 2 * util.difficultyModifier;
    } else {
        x = hud.radarLeftBound;
    }
}
