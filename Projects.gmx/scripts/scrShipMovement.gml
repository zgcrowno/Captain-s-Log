if(string_pos(global.util.actionQueueThrustersPortString, actionQueue[| i]) != 0) {
    scrShipPortMovement();
} else if(string_pos(global.util.actionQueueThrustersStarboardString, actionQueue[| i]) != 0) {
    scrShipStarboardMovement();
} else if(string_pos(global.util.actionQueueThrustersBowString, actionQueue[| i]) != 0) {
    scrShipBowMovement();
} else if(string_pos(global.util.actionQueueThrustersSternString, actionQueue[| i]) != 0) {
    scrShipSternMovement();
} else if(string_pos(global.util.actionQueueThrustersClockString, actionQueue[| i]) != 0) {
    scrShipClockMovement();
} else if(string_pos(global.util.actionQueueThrustersCountString, actionQueue[| i]) != 0) {
    scrShipCountMovement();
}
