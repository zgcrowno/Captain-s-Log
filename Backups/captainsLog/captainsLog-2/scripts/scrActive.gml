if(actionMap[? "Active"]) {
    if(currentPPActive == 0) {
        if(requiredPPActive <= currentPP) {
            if(object_index == objRiceCake) {
                with(objPlayerBullet) {
                    instance_create(x, y, objRiceCakeActive);
                    instance_destroy();
                }
            }
        } else {
            //To Do: Error to user about lack of power
        }
    } else {
        //To Do: Error to user about cooldown
    }
}
