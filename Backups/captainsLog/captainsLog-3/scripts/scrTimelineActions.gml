if(script_execute(scrTouchedTimelineThisTurn) && !alreadyTouchedTimeline) {
    if(object_is_ancestor(object_index, objShip)) {
        if(object_is_ancestor(object_index, objPlayerShip)) {
            script_execute(scrResetNonShield);
        }
        for(i = 0; i < ds_list_size(actionQueue); i++) {
            if(string_pos(util.actionMapGunsString, actionQueue[| i]) != 0) {
                script_execute(scrGunsFire);
            } else if(string_pos(util.actionMapCannonString, actionQueue[| i]) != 0) {
                script_execute(scrCannonFire);
            } else if(string_pos(util.actionMapActiveString, actionQueue[| i]) != 0) {
                script_execute(scrActiveFire);
            } else if(string_pos(util.actionMapPassiveString, actionQueue[| i]) != 0) {
                script_execute(scrPassiveFire);
            } else if(string_pos("Thrst", actionQueue[| i]) != 0) {
                script_execute(scrMovement);
            }
        }
        if(object_is_ancestor(object_index, objPlayerShip)) {
            script_execute(scrSetShields);
            script_execute(scrShieldManagement);
        }
        script_execute(scrResetActionMap);
    }
    if(object_is_ancestor(object_index, objBullet)) {
        script_execute(scrMovement);
        script_execute(scrDestroyOutOfBounds);
    }
    if(object_index == objGridBoxStatic) {
        instance_destroy();
    }
    alreadyTouchedTimeline = true;
}
