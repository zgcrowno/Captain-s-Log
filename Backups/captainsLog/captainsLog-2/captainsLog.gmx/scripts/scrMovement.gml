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
    distanceToCover -= shipSpeed;
}
if(thrustersPort) {
    if(!(sin(degtorad(image_angle + 90)) > 0 && x >= (room_width - (sprite_width / 2)))
       && !(sin(degtorad(image_angle + 90)) < 0 && x <= sprite_width / 2)
       && !(cos(degtorad(image_angle + 90)) > 0 && y >= (room_height - instance_find(objHud, 0).sprite_height - (sprite_width / 2)))
       && !(cos(degtorad(image_angle + 90)) < 0 && y <= sprite_width / 2)) {
        x += shipSpeed * sin(degtorad(image_angle + 90));
        y += shipSpeed * cos(degtorad(image_angle + 90));
        distanceToCoverPort -= shipSpeed;
    } else {
        if(thrustersPort) {
            thrustersPort = false;
            currentPP += requiredPPThrusters;
            currentPPThrustersPort -= requiredPPThrusters;
        }
        distanceToCoverPort = 0;
        xspeed = 0;
        yspeed = 0;
    }
    if(distanceToCoverPort <= 0) {
        if(thrustersPort) {
            thrustersPort = false;
            currentPP += requiredPPThrusters;
            currentPPThrustersPort -= requiredPPThrusters;
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
    if(!(sin(degtorad(image_angle + 90)) > 0 && x <= sprite_width / 2)
       && !(sin(degtorad(image_angle + 90)) < 0 && x >= (room_width - (sprite_width / 2)))
       && !(cos(degtorad(image_angle + 90)) > 0 && y <= sprite_width / 2)
       && !(cos(degtorad(image_angle + 90)) < 0 && y >= (room_height - instance_find(objHud, 0).sprite_height - (sprite_width / 2)))) {
        x -= shipSpeed * sin(degtorad(image_angle + 90));
        y -= shipSpeed * cos(degtorad(image_angle + 90));
        distanceToCoverStarboard -= shipSpeed;
    } else {
        if(thrustersStarboard) {
            thrustersStarboard = false;
            currentPP += requiredPPThrusters;
            currentPPThrustersStarboard -= requiredPPThrusters;
        }
        distanceToCoverStarboard = 0;
        xspeed = 0;
        yspeed = 0;
    }
    if(distanceToCoverStarboard <= 0) {
        if(thrustersStarboard) {
            thrustersStarboard = false;
            currentPP += requiredPPThrusters;
            currentPPThrustersStarboard -= requiredPPThrusters;
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
    if(!(sin(degtorad(image_angle + 90)) > 0 && y >= (room_height - instance_find(objHud, 0).sprite_height - (sprite_width / 2)))
       && !(sin(degtorad(image_angle + 90)) < 0 && y <= sprite_width / 2)
       && !(cos(degtorad(image_angle + 90)) > 0 && x <= sprite_width / 2)
       && !(cos(degtorad(image_angle + 90)) < 0 && x >= (room_width - (sprite_width / 2)))) {
        x -= shipSpeed * cos(degtorad(image_angle + 90));
        y += shipSpeed * sin(degtorad(image_angle + 90));
        distanceToCoverBow -= shipSpeed;
    } else {
        if(thrustersBow) {
            thrustersBow = false;
            currentPP += requiredPPThrusters;
            currentPPThrustersBow -= requiredPPThrusters;
        }
        distanceToCoverBow = 0;
        xspeed = 0;
        yspeed = 0;
    }
    if(distanceToCoverBow <= 0) {
        if(thrustersBow) {
            thrustersBow = false;
            currentPP += requiredPPThrusters;
            currentPPThrustersBow -= requiredPPThrusters;
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
    if(!(sin(degtorad(image_angle + 90)) > 0 && y <= sprite_width / 2)
       && !(sin(degtorad(image_angle + 90)) < 0 && y >= (room_height - instance_find(objHud, 0).sprite_height - (sprite_width / 2)))
       && !(cos(degtorad(image_angle + 90)) > 0 && x >= (room_width - (sprite_width / 2)))
       && !(cos(degtorad(image_angle + 90)) < 0 && x <= sprite_width / 2)) {
        x += shipSpeed * cos(degtorad(image_angle + 90));
        y -= shipSpeed * sin(degtorad(image_angle + 90));
        distanceToCoverStern -= shipSpeed;
    } else {
        if(thrustersStern) {
            thrustersStern = false;
            currentPP += requiredPPThrusters;
            currentPPThrustersStern -= requiredPPThrusters;
        }
        distanceToCoverStern = 0;
        xspeed = 0;
        yspeed = 0;
    }
    if(distanceToCoverStern <= 0) {
        if(thrustersStern) {
            thrustersStern = false;
            currentPP += requiredPPThrusters;
            currentPPThrustersStern -= requiredPPThrusters;
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
    image_angle -= shipAngleSpeed;
    degreesRotatedClockwise += shipAngleSpeed;
    if(degreesRotatedClockwise >= degreesToRotateClockwise) {
        thrustersRotateClockwise = false;
        degreesRotatedClockwise = 0;
        currentPP += requiredPPThrustersRotate;
        currentPPThrustersRotate -= requiredPPThrustersRotate;
    }
} else {
    degreesToRotateClockwise = 0;
    degreesRotatedClockwise = 0;
}
if(thrustersRotateCounterclockwise) {
    image_angle += shipAngleSpeed;
    degreesRotatedCounterclockwise += shipAngleSpeed;
    if(degreesRotatedCounterclockwise >= degreesToRotateCounterclockwise) {
        thrustersRotateCounterclockwise = false;
        degreesRotatedCounterclockwise = 0;
        currentPP += requiredPPThrustersRotate;
        currentPPThrustersRotate -= requiredPPThrustersRotate;
    }
} else {
    degreesToRotateCounterclockwise = 0;
    degreesRotatedCounterclockwise = 0;
}
xspeed = x - xprevious;
yspeed = y - yprevious;
shieldPort.x = x;
shieldPort.y = y;
shieldPort.image_angle = image_angle;
shieldStarboard.x = x;
shieldStarboard.y = y;
shieldStarboard.image_angle = image_angle;
shieldBow.x = x;
shieldBow.y = y;
shieldBow.image_angle = image_angle;
shieldStern.x = x;
shieldStern.y = y;
shieldStern.image_angle = image_angle;
