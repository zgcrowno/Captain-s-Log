if(y < global.hud.radarLowerBound) {
    y += global.util.difficultyModifier;
} else {
    y = global.hud.radarUpperBound;
    scrSpawnWave();
}
