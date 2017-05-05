if(position_meeting(x, y, objPlayerShip)) {
    instance_create(x, y, objEnemyBulletContact);
    player.currentHP -= damage;
    
    //Calculate thrusters damage
    if(scrIsFacingPort()) {
        player.currentHPThrustersPort -= damage;
        if(player.currentHPThrustersPort <= 0) {
            ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString])));
            player.actionMap[? util.actionMapThrustersPortString] = 0;
        }
    } else if(scrIsFacingStarboard()) {
        player.currentHPThrustersStarboard -= damage;
        if(player.currentHPThrustersStarboard <= 0) {
            ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString])));
            player.actionMap[? util.actionMapThrustersStarboardString] = 0;
        }
    } else if(scrIsFacingBow()) {
        player.currentHPThrustersBow -= damage;
        if(player.currentHPThrustersBow <= 0) {
            ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString])));
            player.actionMap[? util.actionMapThrustersBowString] = 0;
        }
    } else if(scrIsFacingStern()) {
        if(player.object_index = objRiceCake) {
            player.currentHP = 0;
        } else { 
            player.currentHPThrustersStern -= damage;
            if(player.currentHPThrustersStern <= 0) {
                ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString])));
                player.actionMap[? util.actionMapThrustersSternString] = 0;
            }
        }
    }
    
    instance_destroy();
}
