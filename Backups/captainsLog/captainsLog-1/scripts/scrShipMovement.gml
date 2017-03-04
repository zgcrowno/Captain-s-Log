if(string_pos(util.actionQueueThrustersPortString, actionQueue[| i]) != 0) {
    if(actionMap[? util.actionMapThrustersPortString] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && x >= (hud.radarRightBound - (sprite_width / 2)))
           && !(sin(degtorad(image_angle + 90)) < 0 && x <= hud.radarLeftBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) > 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) < 0 && y <= hud.radarUpperBound + (sprite_width / 2))) {
            x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
            y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            view_xview[0] += util.backgroundMovementDistance;
        } else {
            actionMap[? util.actionMapThrustersPortString] = 0;
        }
    }
} else if(string_pos(util.actionQueueThrustersStarboardString, actionQueue[| i]) != 0) {
    if(actionMap[? util.actionMapThrustersStarboardString] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && x <= hud.radarLeftBound + (sprite_width / 2))
           && !(sin(degtorad(image_angle + 90)) < 0 && x >= (hud.radarRightBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) > 0 && y <= hud.radarUpperBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) < 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))) {
            x -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
            y -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            view_xview[0] -= util.backgroundMovementDistance;
        } else {
            actionMap[? util.actionMapThrustersStarboardString] = 0;
        }
    }
} else if(string_pos(util.actionQueueThrustersBowString, actionQueue[| i]) != 0) {
    if(actionMap[? util.actionMapThrustersBowString] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))
           && !(sin(degtorad(image_angle + 90)) < 0 && y <= hud.radarUpperBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) > 0 && x <= hud.radarLeftBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) < 0 && x >= (hud.radarRightBound - (sprite_width / 2)))) {
            x -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            y += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
            view_yview[0] += util.backgroundMovementDistance;
        } else {
            actionMap[? util.actionMapThrustersBowString] = 0;
        }
    }
} else if(string_pos(util.actionQueueThrustersSternString, actionQueue[| i]) != 0) {
    if(actionMap[? util.actionMapThrustersSternString] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && y <= hud.radarUpperBound + (sprite_width / 2))
           && !(sin(degtorad(image_angle + 90)) < 0 && y >= (hud.radarLowerBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) > 0 && x >= (hud.radarRightBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) < 0 && x <= hud.radarLeftBound + (sprite_width / 2))) {
            x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
            view_yview -= util.backgroundMovementDistance;
        } else {
            actionMap[? util.actionMapThrustersSternString] = 0;
        }
    }
} else if(string_pos(util.actionQueueThrustersClockString, actionQueue[| i]) != 0) {
    if(actionMap[? util.actionMapThrustersClockString] > 0) {
        if(object_index == objRiceCake && actionMap[? util.actionMapPassiveString] == active) {
            if(actionMap[? util.actionMapThrustersClockString] >= 2) {
                image_angle += 180;
                view_angle[0] += 180;
                actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString]))] = util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString] - 1);
                actionMap[? util.actionMapThrustersClockString] -= 1;
            } else {
                image_angle += 270;
                view_angle[0] += 270;
            }
        } else {
            image_angle += 270;
            view_angle[0] += 270;
        }
    }
} else if(string_pos(util.actionQueueThrustersCountString, actionQueue[| i]) != 0) {
    if(actionMap[? util.actionMapThrustersCountString] > 0) {
        if(object_index == objRiceCake && actionMap[? util.actionMapPassiveString] == active) {
            if(actionMap[? util.actionMapThrustersCountString] >= 2) {
                image_angle += 180;
                view_angle[0] += 180;
                actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString]))] = util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString] - 1);
                actionMap[? util.actionMapThrustersCountString] -= 1;
            } else {
                image_angle += 90;
                view_angle[0] += 90
            }
        } else {
            image_angle += 90;
            view_angle[0] += 90
        }
    }
}
if(image_angle >= 360) {
    image_angle -= floor(image_angle / 360) * 360;
}
