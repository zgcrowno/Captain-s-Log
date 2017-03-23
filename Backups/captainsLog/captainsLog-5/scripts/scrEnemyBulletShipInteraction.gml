if(position_meeting(x, y, objPlayerShip)) {
    instance_create(x, y, objEnemyBulletContact);
    player.currentHP -= damage;
    
    //Calculate thrusters damage
    if(scrIsFacingPort()) {
        player.currentHPThrustersPort -= damage;
        if(player.currentHPThrustersPort <= 0) {
            player.actionMap[? util.actionMapThrustersPortString] = 0;
        }
    } else if(scrIsFacingStarboard()) {
        player.currentHPThrustersStarboard -= damage;
        if(player.currentHPThrustersStarboard <= 0) {
            player.actionMap[? util.actionMapThrustersStarboardString] = 0;
        }
    } else if(scrIsFacingBow()) {
        player.currentHPThrustersBow -= damage;
        if(player.currentHPThrustersBow <= 0) {
            player.actionMap[? util.actionMapThrustersBowString] = 0;
        }
    } else if(scrIsFacingStern()) {
        player.currentHPThrustersStern -= damage;
        if(player.currentHPThrustersStern <= 0) {
            player.actionMap[? util.actionMapThrustersSternString] = 0;
        }
    }
    
    instance_destroy();
}
