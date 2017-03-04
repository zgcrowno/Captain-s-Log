if(scrTouchedTimelineThisTurn() && !alreadyTouchedTimeline) {
    if(object_is_ancestor(object_index, objShip)) {
        scrShipTimelineActions();
    }
    if(object_is_ancestor(object_index, objBullet)) {
        scrBulletTimelineActions();
    }
    if(object_index == objGridBoxStatic) {
        instance_destroy();
    }
    alreadyTouchedTimeline = true;
}
