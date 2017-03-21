gridBoxes = scrGetGridBoxes();
for(i = 0; i < array_length_1d(gridBoxes); i++) {
    gridBox = gridBoxes[i];
    if(position_meeting(x, y, gridBox)) {
        if(gridBox.sprite_index == sprGridBoxShield) {
            instance_create(x, y, objEnemyBulletContact);
            
            //Calculate shields damage
            if(scrIsFacingPort()) {
                player.currentHPshieldsPort -= damage;
            } else if(scrIsFacingStarboard()) {
                player.currentHPshieldsStarboard -= damage;
            } else if(scrIsFacingBow()) {
                player.currentHPshieldsBow -= damage;
            } else if(scrIsFacingStern()) {
                player.currentHPshieldsStern -= damage;
            }
        }
    }
}
