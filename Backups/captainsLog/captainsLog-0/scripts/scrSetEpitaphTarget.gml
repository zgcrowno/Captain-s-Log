if(target == noone && array_length_1d(global.deadEnemies) != 0) {
    var index = irandom(array_length_1d(global.deadEnemies) - 1);
    if(array_length_2d(global.deadEnemies, index) != 0) {
        toRevive = global.deadEnemies[index, 0];
        target = global.deadEnemies[index, 1];
        nearestTargetProximalGridBox = scrGetNearestEpitaphTargetPerimeterGridBox();
    }
}
