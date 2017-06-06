if(!object_is_ancestor(object_index, objPlayerShip)) {
    if(currentHP <= 0) {
        var gridBoxTouching = instance_position(x, y, objGridBox);
        if(gridBoxTouching != noone) {
            var toReviveAndTarget = noone;
            toReviveAndTarget[0] = object_index;
            toReviveAndTarget[1] = gridBoxTouching;
            ds_list_add(global.deadEnemies, toReviveAndTarget);
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
