gridBoxes = scrGetGridBoxes();
for(i = 0; i < array_length_1d(gridBoxes); i++) {
    gridBox = gridBoxes[i];
    if(position_meeting(x, y, gridBox)) {
        if(gridBox.sprite_index == sprGridBoxShield) {
            instance_create(x, y, objEnemyBulletContact);
            
            //Calculate shields damage
            if(scrIsFacingPort()) {
                player.currentHPShieldsPort -= damage;
            } else if(scrIsFacingStarboard()) {
                player.currentHPShieldsStarboard -= damage;
            } else if(scrIsFacingBow()) {
                player.currentHPShieldsBow -= damage;
            } else if(scrIsFacingStern()) {
                player.currentHPShieldsStern -= damage;
            }
            
            instance_destroy();
        }
    }
}
