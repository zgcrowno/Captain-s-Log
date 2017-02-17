if(!object_is_ancestor(object_index, objProjectile)) {
    if(timelineHorizontal.y == y) {
        return true;
    }
} else {
    if(timelineVertical.x == x) {
        return true;
    }
}
