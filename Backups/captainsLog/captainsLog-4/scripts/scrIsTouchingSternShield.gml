return (scrIsFacingUp(global.player) && scrIsAbove(global.player))
        || (scrIsFacingLeft(global.player) && scrIsLeft(global.player))
        || (scrIsFacingDown(global.player) && scrIsBelow(global.player))
        || (scrIsFacingRight(global.player) && scrIsRight(global.player));
