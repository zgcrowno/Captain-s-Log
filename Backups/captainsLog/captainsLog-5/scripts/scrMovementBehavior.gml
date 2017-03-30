if(scrMovementChance()) {
    if(scrIsAbove(player)) {
        scrPlayerIsAboveMovementBehavior();    
    } else if(scrIsBelow(player)) {
        scrPlayerIsBelowMovementBehavior();
    } else if(scrIsLeft(player)) {
        scrPlayerIsLeftMovementBehavior();
    } else {
        scrPlayerIsRightMovementBehavior();
    }
}
