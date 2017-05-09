if(random(10) >= 9.97) {
    if(scrIsAbove(global.player)) {
        scrPlayerIsAboveGunsBehavior();
    } else if(scrIsBelow(global.player)) {
        scrPlayerIsBelowGunsBehavior();
    } else if(scrIsLeft(global.player)) {
        scrPlayerIsLeftGunsBehavior();
    } else {
        scrPlayerIsRightGunsBehavior();
    }
}
