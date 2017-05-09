if(scrMovementChance()) {
    if(scrIsAbove(global.player)) {
        scrPlayerIsAboveMovementBehavior();    
    } else if(scrIsBelow(global.player)) {
        scrPlayerIsBelowMovementBehavior();
    } else if(scrIsLeft(global.player)) {
        scrPlayerIsLeftMovementBehavior();
    } else {
        scrPlayerIsRightMovementBehavior();
    }
}
