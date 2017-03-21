if(position_meeting(x, y, objPlayerShip)) {
    instance_create(x, y, objEnemyBulletContact);
    player.currentHP -= damage;
    
    //Calculate thrusters damage
    if(scrIsHittingPort()) {
        player.currentHPThrustersPort -= damage;
    } else if(scrIsHittingStarboard()) {
        player.currentHPThrustersStarboard -= damage;
    } else if(scrIsHittingBow()) {
        player.currentHPThrustersBow -= damage;
    } else if(scrIsHittingStern()) {
        player.currentHPThrustersStern -= damage;
    }
    
    //Calculate shields damage
    
    
    instance_destroy();
}
