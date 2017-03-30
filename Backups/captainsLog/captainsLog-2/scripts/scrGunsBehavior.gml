if(random(10) >= 9.97) {
    if(scrIsAbove(player)) {
        scrPlayerIsAboveGunsBehavior();
    } else if(scrIsBelow(player)) {
        scrPlayerIsBelowGunsBehavior();
    } else if(scrIsLeft(player)) {
        scrPlayerIsLeftGunsBehavior();
    } else {
        scrPlayerIsRightGunsBehavior();
    }
}
