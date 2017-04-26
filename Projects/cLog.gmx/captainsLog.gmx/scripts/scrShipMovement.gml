if(string_pos(util.actionQueueThrustersPortString, actionQueue[| i]) != 0) {
    scrShipPortMovement();
} else if(string_pos(util.actionQueueThrustersStarboardString, actionQueue[| i]) != 0) {
    scrShipStarboardMovement();
} else if(string_pos(util.actionQueueThrustersBowString, actionQueue[| i]) != 0) {
    scrShipBowMovement();
} else if(string_pos(util.actionQueueThrustersSternString, actionQueue[| i]) != 0) {
    scrShipSternMovement();
} else if(string_pos(util.actionQueueThrustersClockString, actionQueue[| i]) != 0) {
    scrShipClockMovement();
} else if(string_pos(util.actionQueueThrustersCountString, actionQueue[| i]) != 0) {
    scrShipCountMovement();
}
