if(currentHP <= 0) {
    if(instance_id == player.target) {
        player.target = noone;
    }
    instance_destroy();
    if(object_is_ancestor(object_index, objEnemyShip)) {
        player.enemies = script_execute(scrGetEnemies);
    }
}
