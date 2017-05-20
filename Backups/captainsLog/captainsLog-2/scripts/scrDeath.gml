if(!object_is_ancestor(object_index, objPlayerShip)) {
    if(currentHP <= 0) {
        if(id == global.player.target) {
            global.player.target = noone;
        }
        instance_destroy();
        scrSetEnemies();
    }
} else {
    if(currentHP <= 0) {
        room_restart();
    }
}
