if(position_meeting(x, y, objPlayerShip)) {
    instance_create(x, y, objEnemyBulletContact);
    player.currentHP -= damage;
    
    //Calculate thrusters damage
    if(scrIsFacingPort()) {
        player.currentHPThrustersPort -= damage;
    } else if(scrIsFacingStarboard()) {
        player.currentHPThrustersStarboard -= damage;
    } else if(scrIsFacingBow()) {
        player.currentHPThrustersBow -= damage;
    } else if(scrIsFacingStern()) {
        player.currentHPThrustersStern -= damage;
    }
    
    instance_destroy();
}
