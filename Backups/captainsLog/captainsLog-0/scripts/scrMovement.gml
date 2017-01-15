if(object_is_ancestor(object_index, objShip)) {
        if(actionMap[? "Thrusters Port"] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(sin(degtorad(image_angle + 90)) < 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) > 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) < 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))) {
            x += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
            y += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
        } else {
            actionMap[? "Thrusters Port"] = 0;
        }
    }
    if(actionMap[? "Thrusters Starboard"] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(sin(degtorad(image_angle + 90)) < 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) > 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) < 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))) {
            x -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
            y -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
        } else {
                actionMap[? "Thrusters Starboard"] = 0;
        }
    }
    if(actionMap[? "Thrusters Bow"] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(sin(degtorad(image_angle + 90)) < 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) > 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) < 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))) {
            x -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            y += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
        } else {
                actionMap[? "Thrusters Bow"] = 0;
        }
    } 
    if(actionMap[? "Thrusters Stern"] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(sin(degtorad(image_angle + 90)) < 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) > 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) < 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))) {
            x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
        } else {
                actionMap[? "Thrusters Stern"] = 0;
        }
    } 
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
} else if(object_index == objTimeline) {
    if(y < hud.playAreaLowerBound) {
        y += util.difficultyModifier;
    } else {
        y = hud.playAreaUpperBound;
    }
}
