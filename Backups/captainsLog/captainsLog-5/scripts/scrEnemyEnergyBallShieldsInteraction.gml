var gridBoxes = global.allGridBoxes;

for(var i = 0; i < array_length_1d(gridBoxes); i++) {
    var gridBox = gridBoxes[i];
    
    if(position_meeting(x, y, gridBox)) {
        if(gridBox.sprite_index == sprGridBoxShield) {
            if(scrIsTouchingShield(global.util.portString) && (global.player.actionMap[? global.util.actionMapShieldsPortString] == global.player.active || global.player.actionMap[? global.util.actionMapShieldsPortString] == global.player.toDeactivate)) {
                global.player.currentHPShieldsPort -= damage;
                if(global.player.currentHPShieldsPort <= 0) {
                    with(global.player) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingShield(global.util.starboardString) && (global.player.actionMap[? global.util.actionMapShieldsStarboardString] == global.player.active || global.player.actionMap[? global.util.actionMapShieldsStarboardString] == global.player.toDeactivate)) {
                global.player.currentHPShieldsStarboard -= damage;
                if(global.player.currentHPShieldsStarboard <= 0) {
                    with(global.player) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingShield(global.util.bowString) && (global.player.actionMap[? global.util.actionMapShieldsBowString] == global.player.active || global.player.actionMap[? global.util.actionMapShieldsBowString] == global.player.toDeactivate)) {
                global.player.currentHPShieldsBow -= damage;
                if(global.player.currentHPShieldsBow <= 0) {
                    with(global.player) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            if(scrIsTouchingShield(global.util.sternString) && (global.player.actionMap[? global.util.actionMapShieldsSternString] == global.player.active || global.player.actionMap[? global.util.actionMapShieldsSternString] == global.player.toDeactivate)) {
                global.player.currentHPShieldsStern -= damage;
                if(global.player.currentHPShieldsStern <= 0) {
                    with(global.player) {
                        scrSetShields();
                        scrShieldManagement();
                    }
                }
            }
            
            instance_destroy();
        }
    }
}
