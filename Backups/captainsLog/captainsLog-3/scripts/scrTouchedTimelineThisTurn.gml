if(!object_is_ancestor(object_index, objProjectile)) {
    if(abs(y - global.timelineHorizontal.y) <= global.util.difficultyModifier) {
        return true;
    }
} else {
    if(abs(x - global.timelineVertical.x) <= (2 * global.util.difficultyModifier)) {
        return true;
    }
}
