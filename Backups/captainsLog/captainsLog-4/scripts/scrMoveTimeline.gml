if(y < hud.playAreaLowerBound) {
    y += util.difficultyModifier;
} else {
    y = hud.playAreaUpperBound;
}
