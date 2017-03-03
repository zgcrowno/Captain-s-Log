if(instance_find(objTimelineHorizontal, 0).y < hud.radarLowerBound && x < hud.radarRightBound) {
    x += 2 * util.difficultyModifier;
} else {
    x = hud.radarLeftBound;
}
