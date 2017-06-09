if(object_is_ancestor(object_index, objPlayerShip)) {
    scrResetNonShield();
}
if(object_index == objEpitaph) {
    if(target != noone) {
        if(scrIsInEpitaphTargetRadius()) {
            if(actionMap[? global.util.actionMapPassiveString] == active) {
                instance_create(target.x + (target.sprite_width / 2), target.y + (target.sprite_width / 2), toRevive);
                target = noone;
                nearestTargetProximalGridBox = noone;
                toRevive = noone
                deadEnemiesIndex = noone;
            }
        }
    }
    scrSetEpitaphTarget();
}
for(i = 0; i < ds_list_size(actionQueue); i++) {
    if(string_pos(global.util.actionMapGunsString, actionQueue[| i]) != 0) {
        scrSetGuns();
        scrGunsFire();
    } else if(string_pos(global.util.actionMapCannonString, actionQueue[| i]) != 0) {
        scrCannonFire();
    } else if(string_pos(global.util.actionMapPassiveString, actionQueue[| i]) != 0) {
        scrPassiveFire();
    } else if(string_pos(global.util.actionQueueThrustersString, actionQueue[| i]) != 0) {
        scrMovement();
    }
}
if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetShields();
    scrShieldManagement();
}
scrResetActionMap();
if(object_is_ancestor(object_index, objEnemyShip)) {
    scrBehavior();
}
