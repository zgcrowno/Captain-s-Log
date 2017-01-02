if(currentHP <= 0) {
    instance_destroy();
    if(object_is_ancestor(object_index, objEnemyShip)) {
        player.enemies = script_execute(scrGetEnemies);
        if(object_index == player.target) {
            player.target = noone;
        }
    }
}
