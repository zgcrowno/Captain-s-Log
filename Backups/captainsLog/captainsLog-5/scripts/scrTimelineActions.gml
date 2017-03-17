if(scrTouchedTimelineThisTurn() && !alreadyTouchedTimeline) {
    if(object_index == objGridBox) {
        if(sprite_index == sprGridBoxStatic) {
            scrGridBoxTimelineActions();
        }
    }
    if(object_is_ancestor(object_index, objShip)) {
        scrShipTimelineActions();
    }
    if(object_is_ancestor(object_index, objBullet) 
       || object_is_ancestor(object_index, objCannonBullet)) {
        scrBulletTimelineActions();
    }
    if(object_is_ancestor(object_index, objEnemyShip)) {
        scrBehavior();
    }
    alreadyTouchedTimeline = true;
}
