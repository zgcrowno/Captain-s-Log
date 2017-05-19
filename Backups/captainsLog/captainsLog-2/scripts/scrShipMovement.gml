if(string_pos(global.util.actionQueueThrustersPortString, actionQueue[| i]) != 0) {
    //scrShipPortMovement();
    scrShipLateralMovement(global.util.actionMapThrustersPortString);
} else if(string_pos(global.util.actionQueueThrustersStarboardString, actionQueue[| i]) != 0) {
    //scrShipStarboardMovement();
    scrShipLateralMovement(global.util.actionMapThrustersStarboardString);
} else if(string_pos(global.util.actionQueueThrustersBowString, actionQueue[| i]) != 0) {
    //scrShipBowMovement();
    scrShipLateralMovement(global.util.actionMapThrustersBowString);
} else if(string_pos(global.util.actionQueueThrustersSternString, actionQueue[| i]) != 0) {
    //scrShipSternMovement();
    scrShipLateralMovement(global.util.actionMapThrustersSternString);
} else if(string_pos(global.util.actionQueueThrustersClockString, actionQueue[| i]) != 0) {
    scrShipClockMovement();
} else if(string_pos(global.util.actionQueueThrustersCountString, actionQueue[| i]) != 0) {
    scrShipCountMovement();
}
