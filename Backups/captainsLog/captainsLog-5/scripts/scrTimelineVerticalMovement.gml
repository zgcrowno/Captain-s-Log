if(timelineHorizontal.y < hud.radarLowerBound && x < hud.radarRightBound) {
    x += 2 * util.difficultyModifier;
} else {
    x = hud.radarLeftBound;
}
