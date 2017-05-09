if(!object_is_ancestor(object_index, objProjectile)) {
    if(global.timelineHorizontal.y == 0) {
        alreadyTouchedTimeline = false;
    }
} else {
    if(global.timelineVertical.x == 0) {
        alreadyTouchedTimeline = false;
    }
}
