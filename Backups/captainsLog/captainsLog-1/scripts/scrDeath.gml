if(!object_is_ancestor(object_index, objPlayerShip)) {
    if(currentHP <= 0) {
        var gridBoxTouching = instance_position(x, y, objGridBox);
        if(gridBoxTouching != noone) {
            ds_map_add(global.deadEnemies, object_index, gridBoxTouching);
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
