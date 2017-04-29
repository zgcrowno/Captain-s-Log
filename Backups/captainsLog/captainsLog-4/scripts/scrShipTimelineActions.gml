if(object_is_ancestor(object_index, objPlayerShip)) {
    scrResetNonShield();
}
for(i = 0; i < ds_list_size(actionQueue); i++) {
    if(string_pos(util.actionMapGunsString, actionQueue[| i]) != 0) {
        scrSetGuns();
        scrGunsFire();
    } else if(string_pos(util.actionMapCannonString, actionQueue[| i]) != 0) {
        scrCannonFire();
    } else if(string_pos(util.actionMapActiveString, actionQueue[| i]) != 0) {
        scrActiveFire();
    } else if(string_pos(util.actionMapPassiveString, actionQueue[| i]) != 0) {
        scrPassiveFire();
    } else if(string_pos("Thrst", actionQueue[| i]) != 0) {
        scrMovement();
    }
}
if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetShields();
    scrShieldManagement();
}
scrResetActionMap();
