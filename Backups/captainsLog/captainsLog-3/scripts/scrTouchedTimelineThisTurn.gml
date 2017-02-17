if(!object_is_ancestor(object_index, objProjectile)) {
    if(abs(y - timelineHorizontal.y) < 3) {
        return true;
    }
} else {
    if(abs(x - timelineVertical.x) < 3) {
        return true;
    }
}
