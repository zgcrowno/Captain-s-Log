return (scrIsFacingUp(player) && scrIsRight(player))
        || (scrIsFacingLeft(player) && scrIsAbove(player))
        || (scrIsFacingDown(player) && scrIsLeft(player))
        || (scrIsFacingRight(player) && scrIsBelow(player));
