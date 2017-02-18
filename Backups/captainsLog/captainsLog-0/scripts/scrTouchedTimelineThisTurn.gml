if(!object_is_ancestor(object_index, objProjectile)) {
    if(abs(y - timelineHorizontal.y) <= util.difficultyModifier) {
        return true;
    }
} else {
    if(abs(x - timelineVertical.x) <= (2 * util.difficultyModifier)) {
        return true;
    }
}
