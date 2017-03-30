//In the future, modify this script to work with all player ships.
if(actionMap[? util.actionMapActiveString]) {
    if(object_index == objRiceCake) {
        with(objPlayerBullet) {
            instance_create(x, y, objRiceCakeActive);
            instance_destroy();
        }
    } else {
        //TODO: Cases for other ships
    }
}
