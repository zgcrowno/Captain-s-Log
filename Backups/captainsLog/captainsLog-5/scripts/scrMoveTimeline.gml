if(y < hud.playAreaLowerBound) {
    move_towards_point(hud.playAreaLeftBound, hud.playAreaLowerBound, util.difficultyModifier);
} else {
    y = hud.playAreaUpperBound;
}
