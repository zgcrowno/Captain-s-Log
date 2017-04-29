//In the future, modify this script to work with all player ships.
if(actionMap[? util.actionMapActiveString]) {
    if(object_index == objRiceCake) {
        with(objPlayerBullet) {
            instance_create(x, y, objRiceCakeActive);
            instance_destroy();
        }
    } else if(object_index == objSidecar) {
        with(objPlayerBullet) {
            x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
            y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
        }
    } else if(object_index == objFlasher) {
        scrSetState(activeState);
    } else if(object_index == objHalitosis) {
        if(sprite_index != sprHalitosisSmall) {
            sprite_index = sprHalitosisSmall;
        } else {
            sprite_index = sprHalitosis;
        }
    } else if(object_index == objPincer) {
        instance_create(x, y, objPincerActive);
    } else if(object_index == objMezzanine) {
        scrSetState(activeState);
    }
}
