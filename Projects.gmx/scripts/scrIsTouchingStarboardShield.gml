return (scrIsFacingUp(global.player) && scrIsLeft(global.player))
        || (scrIsFacingLeft(global.player) && scrIsBelow(global.player))
        || (scrIsFacingDown(global.player) && scrIsRight(global.player))
        || (scrIsFacingRight(global.player) && scrIsAbove(global.player));
