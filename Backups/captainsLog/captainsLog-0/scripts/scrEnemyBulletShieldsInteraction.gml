gridBoxes = scrGetGridBoxes();

for(i = 0; i < array_length_1d(gridBoxes); i++) {
    gridBox = gridBoxes[i];
    
    if(position_meeting(x, y, gridBox)) {
        if(gridBox.sprite_index == sprGridBoxShield) {
            instance_create(x, y, objEnemyBulletContact);
            
            if(scrIsTouchingPortShield()) {
                player.currentHPShieldsPort -= damage;
                if(player.currentHPShieldsPort <= 0) {
                    with(objPlayerShip) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingStarboardShield()) {
                player.currentHPShieldsStarboard -= damage;
                if(player.currentHPShieldsStarboard <= 0) {
                    with(objPlayerShip) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingBowShield()) {
                player.currentHPShieldsBow -= damage;
                if(player.currentHPShieldsBow <= 0) {
                    with(objPlayerShip) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingSternShield()) {
                player.currentHPShieldsStern -= damage;
                if(player.currentHPShieldsStern <= 0) {
                    with(objPlayerShip) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            
            instance_destroy();
        }
    }
}
