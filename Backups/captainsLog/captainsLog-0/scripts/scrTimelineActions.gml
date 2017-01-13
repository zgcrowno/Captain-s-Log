if(script_execute(scrTouchedTimelineThisTurn) && !alreadyTouchedTimeline) {
    if(object_is_ancestor(object_index, objShip)) {
        script_execute(scrResetNonShield);
    }
    script_execute(scrMovement);
    if(object_is_ancestor(object_index, objShip)) {
        script_execute(scrSetShields);
    }
    if(object_is_ancestor(object_index, objShip)) {
        script_execute(scrGunsFire);
    }
    if(object_is_ancestor(object_index, objShip)) {
        script_execute(scrCannonFire);
    }
    if(object_is_ancestor(object_index, objShip)) {
        script_execute(scrActiveFire);
    }
    if(object_is_ancestor(object_index, objShip)) {
        script_execute(scrPassiveFire);
    }
    if(object_is_ancestor(object_index, objShip)) {
        script_execute(scrResetActionMap);
    }
    if(object_is_ancestor(object_index, objShip)) {
        show_debug_message("something");
        script_execute(scrShieldManagement);
    }
    if(object_is_ancestor(object_index, objBullet)) {
        script_execute(scrDestroyOutOfBounds);
    }
    alreadyTouchedTimeline = true;
}
