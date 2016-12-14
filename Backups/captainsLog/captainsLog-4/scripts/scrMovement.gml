    if(actionMap[? "Thrusters Port"] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(sin(degtorad(image_angle + 90)) < 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) > 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) < 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))) {
            x += util.gridBlockWidth * sin(degtorad(image_angle + 90));
            y += util.gridBlockWidth * cos(degtorad(image_angle + 90));
        } else {
            actionMap[? "Thrusters Port"] = 0;
        }
    }
    if(actionMap[? "Thrusters Starboard"] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(sin(degtorad(image_angle + 90)) < 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) > 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) < 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))) {
            x -= util.gridBlockWidth * sin(degtorad(image_angle + 90));
            y -= util.gridBlockWidth * cos(degtorad(image_angle + 90));
        } else {
                actionMap[? "Thrusters Starboard"] = 0;
        }
    }
    if(actionMap[? "Thrusters Bow"] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(sin(degtorad(image_angle + 90)) < 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) > 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) < 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))) {
            x -= util.gridBlockWidth * cos(degtorad(image_angle + 90));
            y += util.gridBlockWidth * sin(degtorad(image_angle + 90));
        } else {
                actionMap[? "Thrusters Bow"] = 0;
        }
    } 
    if(actionMap[? "Thrusters Stern"] > 0) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(sin(degtorad(image_angle + 90)) < 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) > 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) < 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))) {
            x += util.gridBlockWidth * cos(degtorad(image_angle + 90));
            y -= util.gridBlockWidth * sin(degtorad(image_angle + 90));
        } else {
                actionMap[? "Thrusters Stern"] = 0;
        }
    } 
    if(actionMap[? "Thrusters Clock"] > 0) {
        image_angle -= 90;
    }
    if(actionMap[? "Thrusters Count"] > 0) {
        image_angle += 90;
    }
