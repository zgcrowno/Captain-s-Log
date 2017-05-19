//In the future, modify this script to work with all player ships.
    if(object_index == objRiceCake) {
        with(objPlayerBullet) {
            instance_create(x, y, objRiceCakeActive);
            instance_destroy();
        }
        currentPPActive = requiredPPActive;
    } else if(object_index == objSidecar) {
        with(objPlayerBullet) {
            x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
        }
        currentPPActive = requiredPPActive;
    } else if(object_index == objFlasher) {
        for(var j = 0; j < array_length_1d(gridBoxes); j++) {
            gridBox2 = gridBoxes[j];
            if(input == gridBox2.numberString) {
                if(((gridBox2.x + (gridBox2.sprite_width / 2)) - (x - bbox_left)) > global.hud.radarLeftBound
                   && (((gridBox2.x + gridBox2.sprite_width) - (gridBox2.sprite_width / 2)) + (bbox_right - x)) < global.hud.radarRightBound
                   && ((gridBox2.y + (gridBox2.sprite_width / 2)) - (y - bbox_top)) > global.hud.radarUpperBound
                   && (((gridBox2.y + gridBox2.sprite_width) - (gridBox2.sprite_width / 2)) + (bbox_bottom - y)) < global.hud.radarLowerBound) {
                    if((actionMap[? global.util.actionMapPassiveString] == active && distance_to_object(gridBox2) < 5 * gridBox2.sprite_width)
                       || (actionMap[? global.util.actionMapPassiveString] != active && distance_to_object(gridBox2) < 3 * gridBox2.sprite_width)) {
                        x = gridBox2.x + (gridBox2.sprite_width / 2);
                        y = gridBox2.y + (gridBox2.sprite_width / 2);
                        currentPPActive = requiredPPActive;
                    }
                }
            }
        }
    } else if(object_index == objHalitosis) {
        if(sprite_index != sprHalitosisPassive) {
            if(sprite_index != sprHalitosisSmall) {
                sprite_index = sprHalitosisSmall;
            } else {
                sprite_index = sprHalitosis;
            }
            currentPPActive = requiredPPActive;
        } else {
            //TODO: Error to user about ship form
        }
    } else if(object_index == objPincer) {
        instance_create(x, y, objPincerActive);
        currentPPActive = requiredPPActive;
    } else if(object_index == objMezzanine) {
        if(input == global.util.portStringLower) {
            sprite_index = sprMezzaninePort;
        } else if(input == global.util.starboardStringLower) {
            sprite_index = sprMezzanineStarboard;
        } else if(input == global.util.bowStringLower) {
            sprite_index = sprMezzanineBow;
        } else if(input == global.util.sternStringLower) {
            sprite_index = sprMezzanineStern;
        } else {
            //TODO: Error about input
        }
        currentPPActive = requiredPPActive;
    }
    scrSetState(initState);
