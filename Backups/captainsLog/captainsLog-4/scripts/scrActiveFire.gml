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
    
    } else if(object_index == objPincer) {
    
    } else {
        //TODO: Cases for other ships
    }
}
