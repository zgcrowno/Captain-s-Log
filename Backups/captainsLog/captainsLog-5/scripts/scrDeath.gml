if(!object_is_ancestor(object_index, objPlayerShip)) {
    if(currentHP <= 0) {
        if(id == player.target) {
            player.target = noone;
        }
        instance_destroy();
        if(object_is_ancestor(object_index, objEnemyShip)) {
            util.enemies = scrGetEnemies();
        }
    }
} else {
    if(currentHP <= 0) {
        room_restart();
    }
}
