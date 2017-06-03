if(target == noone && !ds_map_empty(global.deadEnemies)) {
    target = ds_map_find_value(global.deadEnemies, ds_map_find_first(global.deadEnemies));
    nearestTargetProximalGridBox = scrGetNearestEpitaphTargetPerimeterGridBox();
    toRevive = global.deadEnemies[? target];
}
