if(global.timelineHorizontal.y < global.hud.radarLowerBound && x < global.hud.radarRightBound) {
    x += 2 * global.util.difficultyModifier;
} else {
    x = global.hud.radarLeftBound;
}
