if(position_meeting(x, y, global.player)) {
    global.player.currentHP -= damage;
    
    //TODO: This probably isn't doing EXACTLY what it ought to at this point. Come back to this, and ensure that the correct thrusters are taking damage.
    //Calculate thrusters damage
    if(scrIsFacingSideOfShip(global.player, global.util.portString)) {
        global.player.currentHPThrustersPort -= damage;
        if(global.player.currentHPThrustersPort <= 0) {
            with(global.player) {
                scrDecrementAction(global.util.actionMapThrustersPortString, global.util.actionQueueThrustersPortString, true);
            }
        }
    } else if(scrIsFacingSideOfShip(global.player, global.util.starboardString)) {
        global.player.currentHPThrustersStarboard -= damage;
        if(global.player.currentHPThrustersStarboard <= 0) {
            with(global.player) {
                scrDecrementAction(global.util.actionMapThrustersStarboardString, global.util.actionQueueThrustersStarboardString, true);
            }
        }
    } else if(scrIsFacingSideOfShip(global.player, global.util.bowString)) {
        global.player.currentHPThrustersBow -= damage;
        if(global.player.currentHPThrustersBow <= 0) {
            with(global.player) {
                scrDecrementAction(global.util.actionMapThrustersBowString, global.util.actionQueueThrustersBowString, true);
            }
        }
    } else if(scrIsFacingSideOfShip(global.player, global.util.sternString)) {
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
}
