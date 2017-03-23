return (scrIsFacingUp(player) && scrIsAbove(player))
        || (scrIsFacingLeft(player) && scrIsLeft(player))
        || (scrIsFacingDown(player) && scrIsBelow(player))
        || (scrIsFacingRight(player) && scrIsRight(player));
