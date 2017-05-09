return (scrIsFacingUp(global.player) && scrIsRight(global.player))
        || (scrIsFacingLeft(global.player) && scrIsAbove(global.player))
        || (scrIsFacingDown(global.player) && scrIsLeft(global.player))
        || (scrIsFacingRight(global.player) && scrIsBelow(global.player));
