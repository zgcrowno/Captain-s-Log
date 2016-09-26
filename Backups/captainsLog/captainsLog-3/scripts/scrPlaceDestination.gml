if(x == player.x && y == player.y) {
    visible = false;
} else {
    visible = true;
}

for(i = 0; i < destinationPlacementSpeed; i++) {
    if(numActiveThrusters == 0) {
        distanceToCover = 0;
    }
    if(distanceToCover < 0) {
        distanceToCover = 0;
    }
    if(distanceToCoverPort < 0) {
        distanceToCoverPort = 0;
    }
    if(distanceToCoverStarboard < 0) {
        distanceToCoverStarboard = 0;
    }
    if(distanceToCoverBow < 0) {
        distanceToCoverBow = 0;
    }
    if(distanceToCoverStern < 0) {
        distanceToCoverStern = 0;
    }
    if(numActiveThrusters > 0) {
        distanceToCover -= destinationSpeed;
    }
    if(thrustersPort) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(sin(degtorad(image_angle + 90)) < 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) > 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) < 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))) {
            x += destinationSpeed * sin(degtorad(image_angle + 90));
            y += destinationSpeed * cos(degtorad(image_angle + 90));
            distanceToCoverPort -= destinationSpeed;
        } else {
            if(thrustersPort) {
                thrustersPort = false;
            }
            distanceToCoverPort = 0;
            xspeed = 0;
            yspeed = 0;
        }
        if(distanceToCoverPort <= 0) {
            if(thrustersPort) {
                thrustersPort = false;
            }
            distanceToCoverPort = 0;
            xspeed = 0;
            yspeed = 0;
        }
    } else {
        distanceToCover -= distanceToCoverPort;
        distanceToCoverPort = 0;
    } 
    if(thrustersStarboard) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(sin(degtorad(image_angle + 90)) < 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) > 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) < 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))) {
            x -= destinationSpeed * sin(degtorad(image_angle + 90));
            y -= destinationSpeed * cos(degtorad(image_angle + 90));
            distanceToCoverStarboard -= destinationSpeed;
        } else {
            if(thrustersStarboard) {
                thrustersStarboard = false;
            }
            distanceToCoverStarboard = 0;
            xspeed = 0;
            yspeed = 0;
        }
        if(distanceToCoverStarboard <= 0) {
            if(thrustersStarboard) {
                thrustersStarboard = false;
            }
            distanceToCoverStarboard = 0;
            xspeed = 0;
            yspeed = 0;
        }
    } else {
        distanceToCover -= distanceToCoverStarboard;
        distanceToCoverStarboard = 0;
    } 
    if(thrustersBow) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(sin(degtorad(image_angle + 90)) < 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) > 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) < 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))) {
            x -= destinationSpeed * cos(degtorad(image_angle + 90));
            y += destinationSpeed * sin(degtorad(image_angle + 90));
            distanceToCoverBow -= destinationSpeed;
        } else {
            if(thrustersBow) {
                thrustersBow = false;
            }
            distanceToCoverBow = 0;
            xspeed = 0;
            yspeed = 0;
        }
        if(distanceToCoverBow <= 0) {
            if(thrustersBow) {
                thrustersBow = false;
            }
            distanceToCoverBow = 0;
            xspeed = 0;
            yspeed = 0;
        }
    } else {
        distanceToCover -= distanceToCoverBow;
        distanceToCoverBow = 0;
    }
    if(thrustersStern) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(sin(degtorad(image_angle + 90)) < 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) > 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) < 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))) {
            x += destinationSpeed * cos(degtorad(image_angle + 90));
            y -= destinationSpeed * sin(degtorad(image_angle + 90));
            distanceToCoverStern -= destinationSpeed;
        } else {
            if(thrustersStern) {
                thrustersStern = false;
            }
            distanceToCoverStern = 0;
            xspeed = 0;
            yspeed = 0;
        }
        if(distanceToCoverStern <= 0) {
            if(thrustersStern) {
                thrustersStern = false;
            }
            distanceToCoverStern = 0;
            xspeed = 0;
            yspeed = 0;
        }
    } else {
        distanceToCover -= distanceToCoverStern;
        distanceToCoverStern = 0;
    }
    if(thrustersRotateClockwise) {
        image_angle -= destinationAngleSpeed;
        degreesRotatedClockwise += destinationAngleSpeed;
        if(degreesRotatedClockwise >= degreesToRotateClockwise) {
            thrustersRotateClockwise = false;
            degreesRotatedClockwise = 0;
        }
    } else {
        degreesToRotateClockwise = 0;
        degreesRotatedClockwise = 0;
    }
    if(thrustersRotateCounterclockwise) {
        image_angle += destinationAngleSpeed;
        degreesRotatedCounterclockwise += destinationAngleSpeed;
        if(degreesRotatedCounterclockwise >= degreesToRotateCounterclockwise) {
            thrustersRotateCounterclockwise = false;
            degreesRotatedCounterclockwise = 0;
        }
    } else {
        degreesToRotateCounterclockwise = 0;
        degreesRotatedCounterclockwise = 0;
    }
    xspeed = x - xprevious;
    yspeed = y - yprevious;
}
