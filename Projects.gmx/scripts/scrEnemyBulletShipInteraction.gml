if(position_meeting(x, y, global.player)) {
    instance_create(x, y, objEnemyBulletContact);
    global.player.currentHP -= damage;
    
    //Calculate thrusters damage
    if(scrIsFacingPort()) {
        global.player.currentHPThrustersPort -= damage;
        if(global.player.currentHPThrustersPort <= 0) {
            ds_list_delete(global.player.actionQueue, ds_list_find_index(global.player.actionQueue, global.util.actionQueueThrustersPortString + string(global.player.actionMap[? global.util.actionMapThrustersPortString])));
            global.player.actionMap[? global.util.actionMapThrustersPortString] = 0;
        }
    } else if(scrIsFacingStarboard()) {
        global.player.currentHPThrustersStarboard -= damage;
        if(global.player.currentHPThrustersStarboard <= 0) {
            ds_list_delete(global.player.actionQueue, ds_list_find_index(global.player.actionQueue, global.util.actionQueueThrustersStarboardString + string(global.player.actionMap[? global.util.actionMapThrustersStarboardString])));
            global.player.actionMap[? global.util.actionMapThrustersStarboardString] = 0;
        }
    } else if(scrIsFacingBow()) {
        global.player.currentHPThrustersBow -= damage;
        if(global.player.currentHPThrustersBow <= 0) {
            ds_list_delete(global.player.actionQueue, ds_list_find_index(global.player.actionQueue, global.util.actionQueueThrustersBowString + string(global.player.actionMap[? global.util.actionMapThrustersBowString])));
            global.player.actionMap[? global.util.actionMapThrustersBowString] = 0;
        }
    } else if(scrIsFacingStern()) {
        if(global.player.object_index = objRiceCake) {
            global.player.currentHP = 0;
        } else { 
            global.player.currentHPThrustersStern -= damage;
            if(global.player.currentHPThrustersStern <= 0) {
                ds_list_delete(global.player.actionQueue, ds_list_find_index(global.player.actionQueue, global.util.actionQueueThrustersSternString + string(global.player.actionMap[? global.util.actionMapThrustersSternString])));
                global.player.actionMap[? global.util.actionMapThrustersSternString] = 0;
            }
        }
    }
    
    instance_destroy();
}
