if(target == noone && !ds_list_empty(global.deadEnemies)) {
    deadEnemiesIndex = irandom(ds_list_size(global.deadEnemies) - 1);
    var listElement = global.deadEnemies[| deadEnemiesIndex];
    toRevive = listElement[0];
    target = listElement[1];
    nearestTargetProximalGridBox = scrGetNearestEpitaphTargetPerimeterGridBox();
    ds_list_delete(global.deadEnemies, deadEnemiesIndex);
}
