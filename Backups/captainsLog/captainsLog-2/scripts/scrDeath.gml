if(!object_is_ancestor(object_index, objPlayerShip)) {
    if(currentHP <= 0) {
        var gridBoxTouching = instance_position(x, y, objGridBox);
        if(gridBoxTouching != noone) {
            var deadEnemiesLength = array_length_1d(global.deadEnemies);
            global.deadEnemies[deadEnemiesLength, 0] = object_index;
            global.deadEnemies[deadEnemiesLength, 1] = gridBoxTouching;
        }
        if(id == global.player.target) {
            global.player.target = noone;
        }
        instance_destroy();
    }
} else {
    if(currentHP <= 0) {
        room_restart();
    }
}
