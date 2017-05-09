return (scrIsFacingUp(global.player) && scrIsBelow(global.player))
        || (scrIsFacingLeft(global.player) && scrIsRight(global.player))
        || (scrIsFacingDown(global.player) && scrIsAbove(global.player))
        || (scrIsFacingRight(global.player) && scrIsLeft(global.player));
