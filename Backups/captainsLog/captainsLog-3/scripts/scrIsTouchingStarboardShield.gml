return (scrIsFacingUp(player) && scrIsLeft(player))
        || (scrIsFacingLeft(player) && scrIsBelow(player))
        || (scrIsFacingDown(player) && scrIsRight(player))
        || (scrIsFacingRight(player) && scrIsAbove(player));
