gridBoxes = allGridBoxes;

for(i = 0; i < array_length_1d(gridBoxes); i++) {
    gridBox = gridBoxes[i];
    
    if(position_meeting(x, y, gridBox)) {
        if(gridBox.sprite_index == sprGridBoxShield) {
            instance_create(x, y, objEnemyBulletContact);
            
            if(scrIsTouchingPortShield() && (player.actionMap[? util.actionMapShieldsPortString] == player.active || player.actionMap[? util.actionMapShieldsPortString] == player.toDeactivate)) {
                player.currentHPShieldsPort -= damage;
                show_debug_message("port");
                if(player.currentHPShieldsPort <= 0) {
                    with(objPlayerShip) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingStarboardShield() && (player.actionMap[? util.actionMapShieldsStarboardString] == player.active || player.actionMap[? util.actionMapShieldsStarboardString] == player.toDeactivate)) {
                player.currentHPShieldsStarboard -= damage;
                show_debug_message("starboard");
                if(player.currentHPShieldsStarboard <= 0) {
                    with(objPlayerShip) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingBowShield() && (player.actionMap[? util.actionMapShieldsBowString] == player.active || player.actionMap[? util.actionMapShieldsBowString] == player.toDeactivate)) {
                player.currentHPShieldsBow -= damage;
                show_debug_message("bow");
                if(player.currentHPShieldsBow <= 0) {
                    with(objPlayerShip) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingSternShield() && (player.actionMap[? util.actionMapShieldsSternString] == player.active || player.actionMap[? util.actionMapShieldsSternString] == player.toDeactivate)) {
                player.currentHPShieldsStern -= damage;
                show_debug_message("stern");
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
