if(!object_is_ancestor(object_index, objProjectile)) {
    if(timelineHorizontal.y == hud.radarUpperBound) {
        alreadyTouchedTimeline = false;
    }
} else {
    if(timelineVertical.x == hud.radarLeftBound) {
        alreadyTouchedTimeline = false;
    }
}
