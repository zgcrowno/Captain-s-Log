if(actionMap[? "Active"]) {
    if(requiredPPActive <= currentPP) {
        if(object_index == objRiceCake) {
            with(objPlayerBullet) {
                instance_create(x, y, objRiceCakeActive);
                instance_destroy();
            }
        }
    }
}
