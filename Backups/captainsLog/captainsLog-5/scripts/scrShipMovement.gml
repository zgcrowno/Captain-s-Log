if(string_pos(global.util.actionQueueThrustersPortString, actionQueue[| i]) != 0) {
    scrShipLateralMovement(global.util.actionMapThrustersPortString);
} else if(string_pos(global.util.actionQueueThrustersStarboardString, actionQueue[| i]) != 0) {
    scrShipLateralMovement(global.util.actionMapThrustersStarboardString);
} else if(string_pos(global.util.actionQueueThrustersBowString, actionQueue[| i]) != 0) {
    scrShipLateralMovement(global.util.actionMapThrustersBowString);
} else if(string_pos(global.util.actionQueueThrustersSternString, actionQueue[| i]) != 0) {
    scrShipLateralMovement(global.util.actionMapThrustersSternString);
} else if(string_pos(global.util.actionQueueThrustersClockString, actionQueue[| i]) != 0) {
    scrShipRotateMovement(global.util.actionMapThrustersClockString);
} else if(string_pos(global.util.actionQueueThrustersCountString, actionQueue[| i]) != 0) {
    scrShipRotateMovement(global.util.actionMapThrustersCountString);
}
