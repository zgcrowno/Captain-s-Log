    if(object_index == objRiceCake) {
        with(objPlayerBullet) {
            instance_create(x, y, objRiceCakeActive);
            instance_destroy();
        }
        currentPPActive = requiredPPActive;
    } else if(object_index == objSidecar) {
        with(objPlayerBullet) {
            scrProjectileMovement();
        }
        currentPPActive = requiredPPActive;
    } else if(object_index == objFlasher) {
        //Note that 'j' is used here so as not to interfere with
        //exterior loop's 'i' variable
        for(var j = 0; j < array_length_1d(gridBoxes); j++) {
            gridBox2 = gridBoxes[j];
            if(global.input == gridBox2.numberString) {
                if(scrGridBoxIsTeleportable(gridBox2)) {
                    x = gridBox2.x + (gridBox2.sprite_width / 2);
                    y = gridBox2.y + (gridBox2.sprite_width / 2);
                    currentPPActive = requiredPPActive;
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
        if(global.input == global.util.portStringLower) {
            sprite_index = sprMezzaninePort;
        } else if(global.input == global.util.starboardStringLower) {
            sprite_index = sprMezzanineStarboard;
        } else if(global.input == global.util.bowStringLower) {
            sprite_index = sprMezzanineBow;
        } else if(global.input == global.util.sternStringLower) {
            sprite_index = sprMezzanineStern;
        } else {
            //TODO: Error about input
        }
        currentPPActive = requiredPPActive;
    } else if(object_index == objNomad) {
        var destination = irandom(array_length_1d(global.allGridBoxes) - 1);
        while(!scrGridBoxIsTeleportable(global.allGridBoxes[destination])) {
            destination = irandom(array_length_1d(global.allGridBoxes) - 1);
        }
        x = global.allGridBoxes[destination].x + (sprite_get_width(sprGridBox) / 2);
        y = global.allGridBoxes[destination].y + (sprite_get_width(sprGridBox) / 2);
        currentPPActive = requiredPPActive;
    }
    if(object_is_ancestor(object_index, objPlayerShip)) {
        scrSetState(global.util.initState);
    }
