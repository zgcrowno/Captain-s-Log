gridBoxes = global.allGridBoxes;

for(i = 0; i < array_length_1d(gridBoxes); i++) {
    gridBox = gridBoxes[i];
    
    if(position_meeting(x, y, gridBox)) {
        if(gridBox.sprite_index == sprGridBoxShield) {
            instance_create(x, y, objEnemyBulletContact);
            
            if(scrIsTouchingPortShield() && (global.player.actionMap[? global.util.actionMapShieldsPortString] == global.player.active || global.player.actionMap[? global.util.actionMapShieldsPortString] == global.player.toDeactivate)) {
                global.player.currentHPShieldsPort -= damage;
                if(global.player.currentHPShieldsPort <= 0) {
                    with(objPlayerShip) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingStarboardShield() && (global.player.actionMap[? global.util.actionMapShieldsStarboardString] == global.player.active || global.player.actionMap[? global.util.actionMapShieldsStarboardString] == global.player.toDeactivate)) {
                global.player.currentHPShieldsStarboard -= damage;
                if(global.player.currentHPShieldsStarboard <= 0) {
                    with(objPlayerShip) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingBowShield() && (global.player.actionMap[? global.util.actionMapShieldsBowString] == global.player.active || global.player.actionMap[? global.util.actionMapShieldsBowString] == global.player.toDeactivate)) {
                global.player.currentHPShieldsBow -= damage;
                if(global.player.currentHPShieldsBow <= 0) {
                    with(objPlayerShip) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingSternShield() && (global.player.actionMap[? global.util.actionMapShieldsSternString] == global.player.active || global.player.actionMap[? global.util.actionMapShieldsSternString] == global.player.toDeactivate)) {
                global.player.currentHPShieldsStern -= damage;
                if(global.player.currentHPShieldsStern <= 0) {
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
