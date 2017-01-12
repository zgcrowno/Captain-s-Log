if(actionMap[? "Active"]) {
    if(object_index == objRiceCake) {
        with(objPlayerBullet) {
            show_debug_message(x);
            show_debug_message(y);
            instance_create(x, y, objRiceCakeActive);
            instance_destroy();
        }
    }
}
