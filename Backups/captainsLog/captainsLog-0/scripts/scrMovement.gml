if(util.turnTime == 0) {
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
        distanceToCover -= numActiveThrusters * util.gridBlockWidth;
    }
    if(thrustersPort) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(sin(degtorad(image_angle + 90)) < 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) > 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) < 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))) {
            x += util.gridBlockWidth * sin(degtorad(image_angle + 90));
            y += util.gridBlockWidth * cos(degtorad(image_angle + 90));
            distanceToCoverPort--;
        } else {
            if(thrustersPort) {
                thrustersPort = false;
                currentPP += requiredPPThrusters;
                currentPPThrustersPort -= requiredPPThrusters;
            }
            distanceToCoverPort = 0;
        }
        if(distanceToCoverPort <= 0) {
            if(thrustersPort) {
                thrustersPort = false;
                currentPP += requiredPPThrusters;
                currentPPThrustersPort -= requiredPPThrusters;
            }
            distanceToCoverPort = 0;
        }
    } else {
        distanceToCover--;
        distanceToCoverPort = 0;
    } 
    if(thrustersStarboard) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(sin(degtorad(image_angle + 90)) < 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) > 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) < 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))) {
            x -= util.gridBlockWidth * sin(degtorad(image_angle + 90));
            y -= util.gridBlockWidth * cos(degtorad(image_angle + 90));
            distanceToCoverStarboard--;
        } else {
            if(thrustersStarboard) {
                thrustersStarboard = false;
                currentPP += requiredPPThrusters;
                currentPPThrustersStarboard -= requiredPPThrusters;
            }
            distanceToCoverStarboard = 0;
        }
        if(distanceToCoverStarboard <= 0) {
            if(thrustersStarboard) {
                thrustersStarboard = false;
                currentPP += requiredPPThrusters;
                currentPPThrustersStarboard -= requiredPPThrusters;
            }
            distanceToCoverStarboard = 0;
        }
    } else {
        distanceToCover--;
        distanceToCoverStarboard = 0;
    } 
    if(thrustersBow) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(sin(degtorad(image_angle + 90)) < 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) > 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))
           && !(cos(degtorad(image_angle + 90)) < 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))) {
            x -= util.gridBlockWidth * cos(degtorad(image_angle + 90));
            y += util.gridBlockWidth * sin(degtorad(image_angle + 90));
            distanceToCoverBow--;
        } else {
            if(thrustersBow) {
                thrustersBow = false;
                currentPP += requiredPPThrusters;
                currentPPThrustersBow -= requiredPPThrusters;
            }
            distanceToCoverBow = 0;
        }
        if(distanceToCoverBow <= 0) {
            if(thrustersBow) {
                thrustersBow = false;
                currentPP += requiredPPThrusters;
                currentPPThrustersBow -= requiredPPThrusters;
            }
            distanceToCoverBow = 0;
        }
    } else {
        distanceToCover--;
        distanceToCoverBow = 0;
    }
    if(thrustersStern) {
        if(!(sin(degtorad(image_angle + 90)) > 0 && y <= hud.playAreaUpperBound + (sprite_width / 2))
           && !(sin(degtorad(image_angle + 90)) < 0 && y >= (hud.playAreaLowerBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) > 0 && x >= (hud.playAreaRightBound - (sprite_width / 2)))
           && !(cos(degtorad(image_angle + 90)) < 0 && x <= hud.playAreaLeftBound + (sprite_width / 2))) {
            x += util.gridBlockWidth * cos(degtorad(image_angle + 90));
            y -= util.gridBlockWidth * sin(degtorad(image_angle + 90));
            distanceToCoverStern--;
        } else {
            if(thrustersStern) {
                thrustersStern = false;
                currentPP += requiredPPThrusters;
                currentPPThrustersStern -= requiredPPThrusters;
            }
            distanceToCoverStern = 0;
        }
        if(distanceToCoverStern <= 0) {
            if(thrustersStern) {
                thrustersStern = false;
                currentPP += requiredPPThrusters;
                currentPPThrustersStern -= requiredPPThrusters;
            }
            distanceToCoverStern = 0;
        }
    } else {
        distanceToCover--;
        distanceToCoverStern = 0;
    }
    if(thrustersRotateClockwise) {
        image_angle -= 90;
        degreesRotatedClockwise += 90;
        if(degreesRotatedClockwise >= degreesToRotateClockwise) {
            thrustersRotateClockwise = false;
            degreesRotatedClockwise = 0;
            currentPP += requiredPPThrustersRotate;
            currentPPThrustersRotateClockwise -= requiredPPThrustersRotate;
        }
    } else {
        degreesToRotateClockwise = 0;
        degreesRotatedClockwise = 0;
    }
    if(thrustersRotateCounterclockwise) {
        image_angle += 90;
        degreesRotatedCounterclockwise += 90;
        if(degreesRotatedCounterclockwise >= degreesToRotateCounterclockwise) {
            thrustersRotateCounterclockwise = false;
            degreesRotatedCounterclockwise = 0;
            currentPP += requiredPPThrustersRotate;
            currentPPThrustersRotateCounterclockwise -= requiredPPThrustersRotate;
        }
    } else {
        degreesToRotateCounterclockwise = 0;
        degreesRotatedCounterclockwise = 0;
    }
}
