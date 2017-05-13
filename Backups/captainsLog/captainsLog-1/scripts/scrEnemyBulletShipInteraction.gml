if(position_meeting(x, y, global.player)) {
    instance_create(x, y, objEnemyBulletContact);
    global.player.currentHP -= damage;
    
    //Calculate thrusters damage
    if(scrIsFacingPort()) {
        global.player.currentHPThrustersPort -= damage;
        if(global.player.currentHPThrustersPort <= 0) {
            with(global.player) {
                scrDecrementAction(global.util.actionMapThrustersPortString, global.util.actionQueueThrustersPortString, true);
            }
        }
    } else if(scrIsFacingStarboard()) {
        global.player.currentHPThrustersStarboard -= damage;
        if(global.player.currentHPThrustersStarboard <= 0) {
            with(global.player) {
                scrDecrementAction(global.util.actionMapThrustersStarboardString, global.util.actionQueueThrustersStarboardString, true);
            }
        }
    } else if(scrIsFacingBow()) {
        global.player.currentHPThrustersBow -= damage;
        if(global.player.currentHPThrustersBow <= 0) {
            with(global.player) {
                scrDecrementAction(global.util.actionMapThrustersBowString, global.util.actionQueueThrustersBowString, true);
            }
        }
    } else if(scrIsFacingStern()) {
        if(global.player.object_index = objRiceCake) {
            global.player.currentHP = 0;
        } else { 
            global.player.currentHPThrustersStern -= damage;
            if(global.player.currentHPThrustersStern <= 0) {
                with(global.player) {
                    scrDecrementAction(global.util.actionMapThrustersSternString, global.util.actionQueueThrustersSternString, true);
                }
            }
        }
    }
    
    instance_destroy();
}
